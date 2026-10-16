#Main method for Caesars cipher, takes a string and a number and scrambles
def caesars_cipher(input, increment)
    
    #empty cipher string, that does
    cipher = ""

    #first loop goes through each character in the string
    input.each_char do |char|

        #second loop moves the character one down EX: a => b
        increment.times do

            #wraps around the alphabet when it gets to z
            if char == "z"
                char = "a"
            elsif char == "Z"
                char = "A"
            else
                char = char.next
            end
        end
        cipher += char
    end
    return cipher
end