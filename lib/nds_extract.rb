require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_index = 0 
  while director_index < nds.length do
    movie_index = 0 
    number_of_movies = nds[director_index][:movies].length
    total_earnings = 0
    while movie_index < number_of_movies do
      current_earnings = nds[director_index][:movies][movie_index][:worldwide_gross]
      total_earnings += current_earnings
      movie_index += 1
    end
    result[nds[director_index][:name]] = total_earnings
    director_index += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0
  total_earnings = 0
  while movie_index < director_data[:movies].length do
    current_earnings = director_data[:movies][movie_index][:worldwide_gross]
    total_earnings += current_earnings
    movie_index += 1
  end
  total_earnings
end
