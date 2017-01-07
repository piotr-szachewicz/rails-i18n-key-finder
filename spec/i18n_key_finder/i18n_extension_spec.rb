require 'spec_helper'

describe I18nKeyFinder::I18nExtension do
  subject do
    mod = Module.new do
      def self.translate(*args)
        'original value'
      end
    end
    mod.include I18nKeyFinder::I18nExtension

    mod
  end

  let(:skip_keys) { [/bla/, 'test2'] }

  before :each do
    I18nKeyFinder.configure do |config|
      config.skip_keys = skip_keys
    end
  end

  context 'ENV variable SHOW_I18N_KEYS is not defined' do
    it 'calls the original translate method' do
      expect(subject.translate).to eq('original value')
    end
  end

  context 'SHOW_I18N_KEYS is set to true' do
    before :each do
      allow(ENV).to receive(:[]).and_call_original
      allow(ENV).to receive(:[]).with('SHOW_I18N_KEYS').and_return show_keys
    end

    context 'SHOW_I18N_KEYS is set to false' do
      let(:show_keys) { 'false' }

      it 'calls the original translate method' do
        expect(subject.translate).to eq('original value')
      end
    end

    context 'SHOW_I18N_KEYS is set to true' do
      let(:show_keys) { 'true' }

      it 'returns the translation key instead of the value' do
        expect(subject.translate('my.key')).to eq('my.key')
      end

      it 'returns the original translation if asked for a key present on the skip_keys list' do
        expect(subject.translate('test2')).to eq('original value')
      end

      it 'returns the original translation if asked for a key that matches the regexp on the skip_keys list' do
        expect(subject.translate('xablaergf')).to eq('original value')
      end
    end
  end
end
