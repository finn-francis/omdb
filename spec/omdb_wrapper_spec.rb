require "spec_helper"

RSpec.describe OmdbWrapper do
  it "has a version number" do
    expect(OmdbWrapper::VERSION).not_to be nil
  end
end
