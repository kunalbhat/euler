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

    while start_num >= 2520:
        z = []
        for i in range(1,max_num):
            if start_num % i != 0:
                break
            else:
                z.append(start_num % i)
                continue

        if z.count(0) == max_num-1:
            print(start_num, z, len(z))
            break

        start_num += 2520

get_multiple()

