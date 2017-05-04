require 'httparty'

module OmdbWrapper
  class Movie
    include HTTParty
    base_uri OmdbWrapper::OMDB_URL

    attr_reader :title,
                :year,
                :rated,
                :released,
                :runtime,
                :genre,
                :director,
                :writer,
                :plot,
                :imdb_rating

    def initialize(attributes)
      @title = attributes['Title']
      @year = attributes['Year']
      @rated = attributes['Rated']
      @released = attributes['Released']
      @runtime = attributes['Runtime']
      @genre = attributes['Genre']
      @director = attributes['Director']
      @writer = attributes['Writer']
      @plot = attributes['Plot']
      @imdb_rating = attributes['imdbRating']

      @options = { query: { r: json, plot: 'full' } }
    end

    def self.find_by_name(name)
      @options[:query][:t] = name

      response = get('/?', @options)
      new response
    end
  end
end
