Given(/^the following movies are available:$/) do |movies_table|
  movies_table.symbolic_hashes.each do |movie_hash|
    MovieFactory.create_movie(movie_hash)
  end
end
