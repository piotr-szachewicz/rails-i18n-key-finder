require 'spec_helper'

describe I18nKeyFinder do
  describe 'configuration set by the user' do
    let(:skip_keys) { [:a, :b, :c] }

    before :each do
      I18nKeyFinder.configure do |config|
        config.skip_keys = skip_keys
      end
    end

    it 'returns the skip_keys set by the user' do
      expect(I18nKeyFinder.configuration.skip_keys).to eq(skip_keys)
    end
  end
end
