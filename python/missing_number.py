'''
Find the missing number
Good morning. Here's your algorithms question for today.

This question was asked by: Microsoft
You have an array of integers of length n spanning 0 to n with one missing. Write a function that returns the missing number in the array

Example:

nums = [0,1,2,4,5] 
missingNumber(nums) -> 3
Complexity of O(N) required
'''


def missingNumber(nums):
  i = 0
  for i in range(0, len(nums)):
    if i == nums[i]:
      continue
    else:
      return i
  return max(nums)+1

    
missingNumber([0,1,2,4,5])
