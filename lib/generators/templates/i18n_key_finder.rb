I18nKeyFinder.configure do |config|
  # The keys for which the the gem will return the original values.
  # You can use strings or regular expressions here.
  config.skip_keys = []
end

# Adds custom translation code to the I18n gem.
# Note: the keys will only be shown if the SHOW_I18N_KEYS
# environment variable is set to true.
I18n.include I18nKeyFinder::I18nExtension
