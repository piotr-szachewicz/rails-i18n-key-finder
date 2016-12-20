require "i18n_helper/version"
require "i18n_helper/i18n_extension"

module I18nHelper
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :skip_keys

    def initialize
      @skip_keys = []
    end
  end
end
