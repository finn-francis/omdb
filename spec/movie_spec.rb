require "spec_helper"

RSpec.describe OmdbWrapper::Movie do
  let(:movie) { OmdbWrapper::Movie.find_by_name('The two towers') }

  describe '#find_by_name' do
    it 'finds a movie' do
      expect(movie.title).to eq 'The Lord of the Rings: The Two Towers'
      expect(movie.genre).to eq 'Adventure, Drama, Fantasy'
      expect(movie.director).to eq 'Peter Jackson'
    end
  end
end
