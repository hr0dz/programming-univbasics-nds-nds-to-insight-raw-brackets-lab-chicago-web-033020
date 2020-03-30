$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'

def directors_totals(nds)
result = {
  }
 
director_index = 0
total = 0

while director_index < nds.length do
  movie_index = 0
  director = nds[director_index][:name]
  #this piece of code loops through every director name
  #set variable director to equal each director
 
  while movie_index < nds[director_index][:movies].length do
    #this piece of code loops through each director's movies
  
    total = total + nds[director_index][:movies][movie_index][:worldwide_gross]
     puts total
     
     #set variable to total to be 0, then add to itself all the way through each director's worldwide grosses
     
      movie_index += 1
#binding.pry
      end
result[director] = total                                

          #we add director var to our empty hash and set it equal to the total worldwide grosses
total = 0
       director_index += 1
  end
  result
end

 # directorname = nds[row_index][:name]
     #result = {directorname => total}
     
# Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!



