I18nHelper.configure do |config|
  # Enables overriding the values returned by the I18n translation method.
  config.enabled = true

  # The keys for which the the gem will return the original values.
  # You can use strings or regular expressions here.
  config.skip_keys = []
end

# Adds custom translation code to the I18n gem.
I18n.include I18nHelper::I18nExtension
