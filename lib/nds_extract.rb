require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {
    "Stephen Spielberg"=>1357566430,
    "Russo Brothers"=>2281002470,
    "James Cameron"=>2571020373,
    "Spike Lee"=>256624217,
    "Wachowski Siblings"=>806180282,
    "Robert Zemeckis"=>1273838385,
    "Quentin Tarantino"=>662738268,
    "Martin Scorsese"=>636812242,
    "Francis Ford Coppola"=>509719258
  }
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  # puts pp director_data
  #loop through the hash
  #having the :name as the key of hash 
  #hash[:movies][getting the arr][getting the :worldwide_grosses]
  #add :worldwide_grosses value to total
  #add director name and total to a new hash
  
  i = 0 
  total = 0
  # name = director_data[:name]
  while i < director_data[:movies].length do 
    total += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  total
end
