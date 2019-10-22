require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  results = {}
    director_index = 0
    
    while director_index < nds.length do
    director_name = nds[director_index][:name]
    results[director_name] = gross_for_director(nds[director_index])
  
    director_index += 1
  end
  puts results
  results
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
   total = 0 
   movie_index = 0
  while movie_index < director_data[:movies].length do
      total += director_data[:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
  total
end





  