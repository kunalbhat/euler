# Largest palindrome product
# Problem 4
#
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def even_size?(number)
  number % 2 == 0
end

def palindrome?(first_half, second_half)
  first_half == second_half
end

def get_palindrome(product)

  product   = product.to_s
  size      = product.size
  half_size = size / 2

  second_half = product[half_size..size].reverse

  if even_size?(size)
    first_half  = product[0...half_size]
  else
    first_half  = product[0...half_size + 1]
  end

  palindrome?(first_half, second_half)
end

lower_limit = 100
upper_limit = 999
current     = upper_limit

palindromes = []

until upper_limit < lower_limit

  until current < lower_limit
    product = upper_limit * current

    if get_palindrome(product)
      palindromes.push(product)

      break
    end

    current -= 1
  end

  upper_limit -= 1
  current = upper_limit
end

p palindromes.sort.last
