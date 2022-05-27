# frozen_string_literal: true

require "specinfra"
require_relative "specinfra_termux/version"

module SpecinfraTermux
  class Error < StandardError; end
end

class Specinfra::Helper::DetectOs::Termux < Specinfra::Helper::DetectOs
  def detect
    if (termux_properties = run_command('cat /data/data/com.termux/files/usr/share/examples/termux/termux.properties')) && termux_properties.success?
      distro ||= 'termux'
      release ||= ''
      { :family => 'termux', :release => release }
    end
  end
end

class Specinfra::Command::Termux
  class Base < Specinfra::Command::Linux::Base
    class Package < Specinfra::Command::Linux::Base::Package
      class << self
        def check_is_installed(package, version=nil)
          escaped_package = escape(package)
          if version
            cmd = "dpkg-query -f '${Status} ${Version}' -W #{escaped_package} | grep -E '^(install|hold) ok installed #{Regexp.escape(version)}$'"
          else
            cmd = "dpkg-query -f '${Status}' -W #{escaped_package} | grep -E '^(install|hold) ok installed$'"
          end
          cmd
        end

        alias :check_is_installed_by_apt :check_is_installed

        def install(package, version=nil, option='')
          if version
            full_package = "#{package}=#{version}"
          else
            full_package = package
          end
          "DEBIAN_FRONTEND='noninteractive' apt-get -y -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' #{option} install #{escape(full_package)}"
        end

        def get_version(package, opts=nil)
          "dpkg-query -f '${Status} ${Version}' -W #{package} | sed -n 's/^install ok installed //p'"
        end

        def remove(package, option='')
          "DEBIAN_FRONTEND='noninteractive' apt-get -y #{option} remove #{package}"
        end
      end
    end
  end
end
