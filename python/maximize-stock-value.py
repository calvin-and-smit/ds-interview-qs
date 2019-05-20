"""
Bob is developing a new strategy to get rich in the stock market. He wishes to invest 
his portfolio for 1 or more days, then sell it at the right time to maximize his earnings. 
Bob has painstakingly tracked how much his portfolio would have gained or lost for each 
of the last N days. Now he has hired you to figure out what would have been the largest 
total gain his portfolio could have achieved.
"""

"""
First one:
Bob kept track of the last 10 days in the stock market. On each day, the gains/losses are 
as follows: 7 -3 -10 4 2 8 -2 4 -5 -2. If Bob entered the stock market on day 4 and exited 
on day 8, his gains would have been 16 (4 + 2 + 8 + -2 + 4).
Input: The input consists of integers on a line separated by spaces. The input contains N, 
the number of days (0 < N < 10000), followed by N integers D (-10000 < D < 10000) indicating 
the gain or loss on that day. Output: For each test case, print a line containing the maximum 
possible gain over the period. If no gain is possible, print 0.
"""

import sys
for line in sys.stdin:
    if len(line) > 0:
        days = int(line.split(' ')[0])
        ls = tuple(int(x) for x in line.split(' ')[1:])

input = '5 3 6 2 7 4'
input = "10 7 -3 -10 4 2 8 -2 4 -5 -2"
ls = list(int(x) for x in input.split(' ')[1:])
days = input.split(' ')[0]

max_gain = 0
for i in range(len(ls) + 1):
    for ii in range(i, len(ls) + 1):
        gain = sum(ls[i:ii])
        if gain > max_gain:
            max_gain = gain
        else:
            pass
print(max_gain)



"""
Second one:
Write a program to determine the largest sum of contiguous integers in a sequence. 
Contiguous means that the integers are adjacent to each other. Take -4, 2, -5, 0, 3 as an 
example. For this example the largest sum would be 3 and was obtained from the 
subsequence 0, 3.Input:Your program should read lines of text from standard input. Each 
line will contain a sequence of comma-separated integers.Output:For each line of input, 
print to standard output the sum of the largest contiguous subsequence in each sequence, 
one integer per line. In other words, of all the possible contiguous subsequences for a 
given set, find the one with the largest sum, and print that sum.
test input -10, 2, 3, -2, 0, 5, -15
expected output: 8
"""

lis = "2,3,-2,-1,10"
max_sum = 0
ls = list(int(x) for x in lis.split(','))
print('Input: ' + str(ls) + '\n')
for i in range(len(ls) + 1):
    for ii in range(i + 1, len(ls) + 1):
        print('Item {} to {}: '.format(str(i + 1), str(ii)) + str(ls[i:ii]))
        s = sum(ls[i:ii])
        print('Sum = ' + str(s))
        if s > max_sum:
            max_sum = s
        else:
            pass
        print('')
print('Maximum Sum = ' + str(max_sum))

import sys
for line in sys.stdin:
    max_sum = 0
    ls = list(int(x) for x in line.split(','))
    for i in range(len(ls) + 1):
        for ii in range(i + 1, len(ls) + 1):
            s = sum(ls[i:ii])
            if s > max_sum:
                max_sum = s
            else:
                pass
    print(max_sum)
