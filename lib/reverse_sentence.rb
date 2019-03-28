# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  return if !my_sentence || my_sentence.length == 1
  i, j = 0, 0
  length = my_sentence.length
  j = length - 1
  reverse_chars(my_sentence, i, j)
  reverse_words(my_sentence)
  return
end

def reverse_words(my_words)
  i, j = 0, 0 
  while i < my_words.length
    i += 1 while my_words[i] == " "
    j = i
    j += 1 while my_words[j] != " " && my_words[j] != nil
    if j != i
      reverse_chars(my_words, i, (j - 1))
    end
    i = j + 1
  end
  return
end

def reverse_chars(my_string, starting, ending)
  temp = ""
  while starting < ending
    temp = my_string[starting]
    my_string[starting] = my_string[ending]
    my_string[ending] = temp
    starting += 1
    ending -= 1
  end
  return
end