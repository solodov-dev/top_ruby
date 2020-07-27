def substrings(str, dictionary)
  words = str.split
  hashes = dictionary.map { |substring| hash(substring, words)}
  puts hashes.compact.reduce Hash.new, :merge
end

def hash(substring, words)
  counter = 0
  words.each do |w|
    counter += w.scan(substring).length
  end
  if counter != 0 then return {substring => counter} end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings('below', dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)