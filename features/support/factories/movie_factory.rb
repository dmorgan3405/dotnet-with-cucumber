class MovieFactory
  def self.create_movie(movie_hash)
    FactoryGirl.create(:movie, movie_hash)
  end
end
