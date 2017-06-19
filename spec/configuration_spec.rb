require "spec_helper"

module OmdbWrapper
  RSpec.describe Configuration do
    describe '#api_key' do
      it 'should allow a new Configuration object' do
        Configuration.new.api_key = '0000'
      end

      describe 'setting api_key' do
        it 'can set the value' do
          config = Configuration.new
          config.api_key = '1234'
          expect(config.api_key).to eq '1234'
        end
      end
    end
  end
end
