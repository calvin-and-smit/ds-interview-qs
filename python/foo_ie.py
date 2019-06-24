
"""
Question 24 - Oh foo-ie!
________________________________________
Write a function that takes in an integer n, and prints out integers from 1 to n inclusive. 
- If %3 == 0 then print "foo" in place of the integer, 
- if %5 == 0 then print "ie" in place of the integer, and 
- if both conditions are true then print "foo-ie" in place of the integer.

"""


def foo(n):
    for i in range(1, n+1):
        if i % 15 == 0:
            print('foo-ie')
        elif i % 5 == 0:
            print('ie')
        elif i % 3 == 0:
            print('foo')
        else:
            print(i)
