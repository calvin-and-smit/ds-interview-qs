"""
Question 34 - Identifying prime numbers with Python
________________________________________
A prime number (or a prime) is a natural number greater than 1 that cannot be formed by multiplying two smaller natural numbers. 
Given a single #, n, write a function using Python to return whether or not the # is prime. 
Additionally, if the inputted # is prime, save it into an array, a. 
"""


def check_prime(n):
    
    if n == 1:
        print(str(n) + ' is not a prime number')
        return
    halfway = int(n/2) + 1
    for i in range(2, halfway+1):
        if n % i == 0:
            print(str(n) + ' is not a prime number')
            return
    print(str(n) + ' is a prime number')
    return
