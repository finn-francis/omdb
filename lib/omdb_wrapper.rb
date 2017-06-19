require 'omdb_wrapper/version'
require 'omdb_wrapper/configuration'
require 'omdb_wrapper/movie'

module OmdbWrapper
  class << self
    attr_writer :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield configuration
    end
  end
end
