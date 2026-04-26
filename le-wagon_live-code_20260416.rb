# lesson with Santiago Sanchez
def encrypt_character(character)
  return character if character == " "

  alphabet = ("A".."Z").to_a
  # Get the index of the character in the alphabet
  
  character_index = alphabet.index(character)
  

  encrypted_index = character_index - 3
  # substract 3 to that index
  # read the alphabet array at that specific index
  alphabet[encrypted_index]
end


def encrypt(message)
  # Creates an array of characters
  characters = message.chars

  encrypted_array = characters.map { |character|  encrypt_character(character) }

  encrypted_array.join
end

encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
 

describe("#encrypt") do
  it("should encrypt correctly") do
    result  = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"

    expect(result).to eq(expected)
  end
end
