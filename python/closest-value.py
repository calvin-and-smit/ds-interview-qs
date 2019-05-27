"""

You are given Q 1D points, return the value in Q that is closest to value j

Example:
Q = [1,-1,-5,2,4,-2,1]
j = 3

Ans:- 2

"""

def closest_val(Q, j):
  diff = 0
  counter = 1
  temp_val = 0
  closest_value = 0
  for i in Q:
    diff = abs(j - i)
    if counter = 1:
      temp_val = diff
      closest_value = i
    else:
      if diff < temp_val:
        temp_val = diff
        closest_value = i
    counter += 1
    
  return closest_value

