def reverse(string)
    loopArray = []
        idx = string.length - 1
    while idx >= 0
        loopArray.push(string[idx])
    idx -= 1
    end
    word = loopArray.join

    
end

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)
