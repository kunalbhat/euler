# 10001st prime
# Problem 7
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
#
# What is the 10001st prime number?

def generate_integers
  num       = 2
  increment = 2
  integers  = []
  temp      = []

  until num > 10001
    integers.push(num)

    num += 1
  end

  while increment * increment < integers.last
    p increment

    (integers.first..integers.length).step(increment).each do |integer|
      temp.push(integer)
    end

    increment += 1
  end

end

generate_integers
