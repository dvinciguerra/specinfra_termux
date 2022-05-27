# frozen_string_literal: true

require_relative "lib/specinfra_termux/version"

Gem::Specification.new do |spec|
  spec.name = "specinfra_termux"
  spec.version = SpecinfraTermux::VERSION
  spec.authors = ["Daniel Vinciguerra"]
  spec.email = ["daniel.vinciguerra@bivee.com.br"]

  spec.summary = "Specinfra extension for Termux terminal"
  spec.description = spec.summary
  spec.homepage = "https://github.com/dvinciguerra/specinfra_termux"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.require_paths = ["lib"]

  spec.add_dependency "specinfra"
end
