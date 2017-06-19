require "spec_helper"

RSpec.describe OmdbWrapper do
  it "has a version number" do
    expect(OmdbWrapper::VERSION).not_to be nil
  end

  describe '#configure' do
    before do
    end

    it 'should know its api_key' do
      expect(OmdbWrapper.configuration.api_key).to be_nil

      OmdbWrapper.configure do |config|
        config.api_key = '1234'
      end

      expect(OmdbWrapper.configuration.api_key).to eq '1234'
    end
  end
end
