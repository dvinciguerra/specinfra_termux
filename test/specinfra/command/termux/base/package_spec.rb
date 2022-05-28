# frozen_string_literal: true

require "test_helper"

describe Specinfra::Command::Termux::Base::Package do
  before do
    @described_class = Specinfra::Command::Termux::Base::Package
  end

  it "inherits from Specinfra::Command::Linux::Base::Package class" do
    _(@described_class.ancestors).must_include(Specinfra::Command::Linux::Base::Package)
  end

  it "responds to check_is_installed_by_apt" do
    _(@described_class).must_respond_to :check_is_installed_by_apt
  end

  it "responds to install" do
    _(@described_class).must_respond_to :install
  end

  it "responds to get_version" do
    _(@described_class).must_respond_to :get_version
  end

  it "responds to remove" do
    _(@described_class).must_respond_to :remove
  end
end
