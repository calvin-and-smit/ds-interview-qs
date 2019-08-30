# Calculating a moving average using Python

'''
You are given a list of numbers J and a single number p.
Write a function to return the minimum and maximum averages of the sequences of p numbers in J. 
Example: 
J = [4, 4, 4, 9, 10, 11, 12]
p = 3
The sequences will be:
(4,4,4)
(4,4,9)
(4,9,10)
(9,10,11)
(10,11,12)
Here the minimum average will be 4 and the maximum average will be 11, which corresponds to the first and last sequences. 
'''


def moving_average(j: list, p: int):
    if p > len(j):
        return None
    else:
        results = list()
        for i in range(len(j)-p+1):
            results.append(sum(j[i:i+p])/len(j[i:i+p]))
        return min(results), max(results)


if __name__ == '__main__':
    j_in = [4, 4, 4, 9, 10, 11, 12]
    p_in = 3

    print(moving_average(j_in, p_in))
