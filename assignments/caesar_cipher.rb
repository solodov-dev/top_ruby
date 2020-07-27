def caesar_cipher(phrase, step)
  puts phrase.chars.map {|ch| cipher(ch, step)}.join("")
end

def cipher(ch, step)
  if letter?(ch)
    return shift(ch, step)
  else
    return ch
  end
end

def letter?(ch)
  return ch =~ /[[:alpha:]]/ 
end

def shift(ch, step)
  shifted = ch.ord + step
  if overlaps?(ch, shifted) then shifted -= 26 end
  return shifted.chr
end

def overlaps?(ch, shifted)
  return (ch =~ /[A-Z]/ && shifted > 90) || (ch =~ /[a-z]/ && shifted > 122)
end

caesar_cipher('What a string!', 5)