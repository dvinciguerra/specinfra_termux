# frozen_string_literal: true

require "test_helper"

describe Specinfra::Helper::DetectOs::Termux do
  before do
    @described_class = Specinfra::Helper::DetectOs::Termux
  end

  it "inherits from Specinfra::Helper::DetectOs class" do
    _(@described_class.ancestors).must_include(Specinfra::Helper::DetectOs)
  end

  it "responds to detect" do
    instance = @described_class.new(nil)
    _(instance).must_respond_to :detect
  end
end
