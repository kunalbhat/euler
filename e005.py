# Smallest multiple
# Problem 5
#
# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

def get_multiple():
    start_num = 2520
    max_num = 21
    a = start_num

    while a >= start_num:
        z = []
        for i in range(1, max_num):
            b = a % i
            if b != 0:
                break
            else:
                z.append(b)
                continue

        if z.count(0) != max_num-1:
            a += 2520
        else:
            return a

print(get_multiple())

