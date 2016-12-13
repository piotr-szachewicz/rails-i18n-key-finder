I18nHelper.configure do |config|
  # Set some options here
end

I18n.module_eval &I18nHelper::I18nExtension
