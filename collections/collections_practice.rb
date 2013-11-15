# #Collections Practice
array = ["blake", "ashley", "scott"]

# 1. sort the following array in ascending order
#   ["blake", "ashley", "scott"]

array.sort

# 2. sort the following array in descending order
#   ["blake", "ashley", "scott"]
array.sort {|first,second| second <=> first}

# 3. put the following array in reverse order
#   ["blake", "ashley", "scott"]
array.reverse

# 4. grab the second element in the array
#   ["blake", "ashley", "scott"]
array[1]

# 5. print each element of the array to the console
#   ["blake", "ashley", "scott"]
array.each {|item| puts item}


# 6. create a new array in the following order
#   ["blake", "ashley", "scott"] 
#   should transform into
#   ["blake", "scott", "ashley"]

#brute force
array = ["blake", "ashley", "scott"]
array2 = []
array2 << "blake" << "scott" << "ashley"

#better
array = ["blake", "ashley", "scott"]
array2 = []
array2 = array.values_at(0,2,1)


# 7. using the following array create a hash where the elements in the array are the keys 
#and the values of the hash are those elements with the 3rd character changed to a dollar sign.
#   ["blake", "ashley", "scott"]


array = ["blake", "ashley", "scott"]

array.collect {|item| item[2] = "$" }


new_hash = {}
array.each do |item|
#insert code here
end


# 8. create a hash with two keys, "greater_than_10", "less_than_10" 
# and their values will be an array of any numbers greater than 10 or less than 10 in the following array
#   [100, 1000, 5, 2, 3, 15, 1, 1, 100 ]

# brute force
hash_10 = {}
hash_10 = {:greater_than_10 =>[100,1000,15,100], :less_than_10 => [5,2,3,1,1]}

#insert more elegant code here
#

# 9. find all the winners and put them in an array
#   {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}

new_hash = {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}
winners = []
new_hash.each {|key, value| winners << key if value == "winner"} 


# 10. add the following arrays
#   [1,2,3] and [5,9,4]

array_10 = [1,2,3].concat([5,9,4])


# 11. find all words that begin with "a" in the following array
#   ["apple", "orange", "pear", "avis", "arlo", "ascot" ]

stuff = ["apple", "orange", "pear", "avis", "arlo", "ascot" ]

a_words = stuff.select {|item| item[0]=="a"}

# 11. sum all the numbers in the following array
#   [11,4,7,8,9,100,134]

sum = 0
[11,4,7,8,9,100,134].each {|number| sum += number}


# 12. Add an "s" to each word in the array except for the 2nd element in the array?
#   ["hand","feet", "knee", "table"]

stuff = ["hand","feet", "knee", "table"]

stuff.each do|item|

#insert elegant code here

end


# CHALLENGE

# word count

# "The summer of tenth grade was the best summer of my life.  I went to the beach everyday and we had amazing weather.  The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  Its amazing how much the weather affects your mood.  Who would have thought that I could write a whole essay just about the weather in tenth grade.  Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong"

# Count how many times each word appears in my story.
# Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.

# song library

# convert the following array of song titles
  
#   ["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"]

# to a nested hash of the form
# {:artist1 => :songs => [], :artist2 => :songs => []}
# []