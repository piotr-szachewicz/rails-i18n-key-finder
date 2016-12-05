require 'rails/generators/base'

module I18nHelper
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc 'Creates a I18nHelper initializer.'

      def create_initializer_file
        template "i18n_helper.rb", "config/initializers/i18n_helper.rb"
      end
    end
  end
end