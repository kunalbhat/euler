# Smallest multiple
# Problem 5
#
# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

current = 2520
count   = 10

while current > 0

  until count < 1

    p current if current % count == 1

    count += 1
  end

  current += 1
end
