'''
String Subsequence

This question was asked by: Ike

Given two strings, string1 and string2, find out if string1 is a subsequence of string2.

A subsequence is a sequence that can be derived from another sequence by deleting some elements without 
changing the order of the remaining elements.

Example:

string1 = 'abc'
string2 = 'asbsc'
string3 = 'acedb'

isSubSequence(string1, string2) -> True
isSubSequence(string1, string3) -> False

'''


# Refer this: https://www.geeksforgeeks.org/given-two-strings-find-first-string-subsequence-second/

# Returns true if str1[] is a subsequence of str2[]. m is 
# length of str1 and n is length of str2 
def isSubSequence(string1, string2, m, n): 
    # Base Cases 
    if m == 0:    return True
    if n == 0:    return False
  
    # If last characters of two strings are matching 
    if string1[m-1] == string2[n-1]: 
        return isSubSequence(string1, string2, m-1, n-1) 
  
    # If last characters are not matching 
    return isSubSequence(string1, string2, m, n-1) 
  
# Driver program to test the above function 
string1 = "gksrek"
string2 = "geeksforgeeks"
m = len(string1) 
n = len(string2) 
if isSubSequence(string1, string2, m, n): 
    print "Yes"
else: 
    print "No"
