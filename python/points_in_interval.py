
'''

Question 16 - Points within an interval

Suppose you are given P, which is list of j integer intervals, where j is the number of intervals. 
The intervals are in a format [a, b].

Given an integer z, can you return the number of overlapping intervals for point z?


Example:
Input:

P = [0, 2], [3, 7], [4, 6], [7, 8], [1 ,5]
z = 5

Output: 3

At z = 5, there are 3 intervals that overlap. The intervals are: [3, 7], [4, 6], and [1, 5]
'''


def lies_in_range(r, x):
  r_min = r[0]
  r_max = r[1]
  if x >= r_min and x <= r_max:
    return True
  else:
    return False

  
P = [[0, 2], [3, 7], [4, 6], [7, 8], [1 ,5]]
z = 5

counter = 1
for r in P:
  if lies_in_range(r, z):
    counter += 1

    
print(counter)
