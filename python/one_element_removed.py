'''
Question #27 | One element removed

This question was asked by: Facebook

There are two lists, list X and list Y. Both lists contain integers from -1000 to 1000 and
are identical to each other except that one integer is removed in list Y that exists in list X.

Write a function that takes in both lists and returns the integer that was removed in 0(1) time 
and O(n) space without using the python set function.

'''


li_X = [1, 2, 3]
li_Y = [1, 3]

def find_missing_element(x, y):
  return sum(x) - sum(y)


find_missing_element(li_X, li_Y)
