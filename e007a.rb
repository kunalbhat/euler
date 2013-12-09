# 10001st prime
# Problem 7
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
#
# What is the 10001st prime number?

def prime?(number)

  factors = []

  original = number

  until number < 1
    factors.push(number) if original % number == 0
    number -= 1
  end

  true if factors.size == 2
end

number = 2
prime_factors = []

until prime_factors.length > 10001

  prime_factors.push(number) if prime?(number)

  number += 1
end

p prime_factors
