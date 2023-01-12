ALPHABET = ("A".."Z").to_a

def encrypt(text)
  # refactored way
  text.split("").map do |letter|
    index = ALPHABET.index(letter)
    index ? ALPHABET[index - 3] : letter # aka space and comma
  end.join
end

# first way
  # split the text into the letter
  letters = text.split("")
  # create the alphabet
  alphabet = ("A".."Z").to_a
  # iterate over the letters(.map)
  letters.map do |letter|
    index = alphabet.index(letter)
    if index
      alphabet[index - 3]
    else
      letter
    end
  end.join
  # ask the alphabet index of the letter
  # substract 3 from new-index

  # get the new-letter from new-index
  # join the array back to a string
  # if not the letter, keep it same
