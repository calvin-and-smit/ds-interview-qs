'''

Given two sorted arrays A and B, can you generate all possible sorted arrays such that the first element is 
taken from A then from B. Your algorithm must follow the rules below:

Array values must increasing
You must always add an element from both A and B. (This will cause arrays will only increase in size by increments of 2)
You cannot add the same element from either A or B more than once.
For example:

A = [10, 15, 25, 50]
B = [1, 5, 20, 30]

# The resulting arrays are:
  10, 20 
  10, 20, 25, 30
  10, 30
  15, 20
  15, 20, 25, 30
  15, 30
  25, 30

#Note: The last element from A, 50, is not included in the resulting arrays because there no value of B that is >50.


'''
