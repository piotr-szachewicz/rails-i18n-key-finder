require 'rails/generators/base'

module I18nKeyFinder
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc 'Creates a I18nKeyFinder initializer.'

      def create_initializer_file
        template "i18n_key_finder.rb", "config/initializers/i18n_key_finder.rb"
      end
    end
  end
end