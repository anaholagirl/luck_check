def luck_check(numbers)
  length = numbers.length
  even = ""
  even_end = ""
  odd= ""
  odd_end = ""
  if length.even?
      even << numbers.slice(0,(length/2))
      even_end << numbers.slice((length/2)..-1)
  else
      odd << numbers.slice(0,(length/2))
      odd_end << numbers.slice(((length/2) +1 )..-1)
  end

  even = even.split("")
  even.map! { |num| num.to_i }
  even = even.inject(:+)
  even_end = even_end.split("")
  even_end.map! { |num| num.to_i }
  even_end = even_end.inject(:+)

  odd = odd.split("")
  odd.map! { |num| num.to_i }
  odd = odd.inject(:+)
  odd_end = odd_end.split("")
  odd_end.map! { |num| num.to_i}
  odd_end = odd_end.inject(:+)

  if even == even_end && odd == odd_end
    return true
  else
    return false
  end
end
  puts luck_check("0012234")
