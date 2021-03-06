# Even Fibonacci numbers
#
# Each new term in the Fibonacci sequence is generated by adding the previous
# two terms. By starting with 1 and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values do not exceed
# four million, find the sum of the even-valued terms.

a = 1
b = 2
c = 0

sequence = [1, 2]

while c < 4000000
	c = a + b
	a = b
	b = c
	sequence.push(c)
end

# Functional

total = 0

sequence.each do |n|
	if n.even?
		total = total + n
	end
end

# Idiomatic
# sequence.filter(&:even?).reduce(0) { |acc, n| acc += n }
