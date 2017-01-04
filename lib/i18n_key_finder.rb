require "i18n_key_finder/version"
require "i18n_key_finder/i18n_extension"

module I18nKeyFinder
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
