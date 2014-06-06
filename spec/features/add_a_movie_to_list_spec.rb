require 'spec_helper'

scenario 'user adds a movie to a new list' do

  user = current_user
  list = List.new("movie list")
  movie = Movie.new("The Best Movie Ever")
end
