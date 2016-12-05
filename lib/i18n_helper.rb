require "i18n_helper/version"

module I18nHelper
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :option

    def initialize
      @option = 'default_option'
    end
  end

  def translate(args)
    puts 'translating'
  end
end
