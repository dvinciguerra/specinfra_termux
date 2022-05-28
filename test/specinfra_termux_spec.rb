# frozen_string_literal: true

require "test_helper"

describe SpecinfraTermux do
  it "has a version number" do
    _(::SpecinfraTermux::VERSION).wont_be_nil
  end
end
