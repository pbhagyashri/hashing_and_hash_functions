require 'set'
require 'pry'

#Write a method that takes an integer flight_length (in minutes) and an array of integers movie_length(in minutes) and returns a boolean indicating whether there are 2 numbers in movie_length array whoes sum equals to flight_length.

# Assume that user will watch 2 movies
# Don't show same movie again
# Optimize for runtime over memory

#second_movie_length = flight_length - first_movie_length

#approach 1 - Nested For Loop. Outer loop choosing first_movie_length and inner loop choosing second_movie_length. this approach will give a runtime of O(n**2). 

#approach 2 - replacing the inner for loop with a set to get a constant time lookup. 
#through all movie lengths in a set first in O(n) time.then loop through our possible first_movie_lengths and replace our inner loop with a simple check in our set. this will give O(n) runtime overall. 

def can_two_movies_fill_flight(movie_lengths, flight_length) 

  #movie lengths we've seen so far

  movie_lengths_seen = Set.new

  movie_lengths.each do |first_movie_length|
    matching_second_movie_length = flight_length - first_movie_length

    if movie_lengths_seen.include?(matching_second_movie_length)
      return true
    end

    movie_lengths_seen.add(first_movie_length)
  end

  #we never found a match so return false
  return false
end

puts can_two_movies_fill_flight([90, 100, 120], 180)

#We know users wont watch the same movie again because we have checked if movie_lengths_seen for matching_second_movie_length before we have added first_movie_length in it.