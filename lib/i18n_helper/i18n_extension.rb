module I18nHelper

  I18nExtension = Proc.new do
    class << self
      def translate_with_feature(*args)
        puts 'I am overriding translate!'
        translate_without_feature(*args)
      end

      alias_method_chain :translate, :feature
      alias :t :translate
    end
  end

end