module I18nKeyFinder
  module I18nExtension

    def self.included(base)
      return unless ENV['SHOW_I18N_KEYS'] == 'true'

      base.module_eval do
        class << self
          def translate_with_feature(*args)
            result = translate_without_feature(*args)
            # TODO - maybe it can just work with a new backend

            key = args.shift.to_s

            skip_keys = I18nKeyFinder.configuration.skip_keys

            should_skip = skip_keys.any? do |key_to_skip|
              key_to_skip.is_a?(Regexp) ? key_to_skip.match(key) : key_to_skip == key
            end

            should_skip ? result : key
          end

          alias_method :translate_without_feature, :translate
          alias_method :translate, :translate_with_feature
          alias :t :translate
        end
      end
    end

  end
end
