# frozen_string_literal: true

require "test_helper"

describe Specinfra::Command::Termux::Base do
  before do
    @described_class = Specinfra::Command::Termux::Base
  end

  it "inherits from Specinfra::Command::Linux::Base class" do
    _(@described_class.ancestors).must_include(Specinfra::Command::Linux::Base)
  end
end
