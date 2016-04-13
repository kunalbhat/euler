# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

def multiply_factors(list, num):
    product = 1

    for i in list:
        product *= i

    if product == num:
        print(list)

def get_factors(num):
    original_num = num
    factors = []

    while num > 0:
        if original_num % num == 0:
            factors.append(num)

        num -= 1

    return factors

def check_prime_factors(num):
    factors_list = get_factors(num)

    #Debug
    print factors_list

    list_length = len(factors_list)
    i = list_length
    factors_subset = []

    while i > 0:
        factors_subset.append(factors_list[i-1])
        i -= 1

        multiply_factors(factors_subset, num)

check_prime_factors(13195)
