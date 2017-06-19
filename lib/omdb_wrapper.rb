require 'omdb_wrapper/version'
require 'omdb_wrapper/configuration'
require 'omdb_wrapper/movie'

module OmdbWrapper
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration
  end
end
