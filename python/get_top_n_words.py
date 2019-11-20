'''
Get top N words
Good morning. Here's your python question for today.

This question was asked by: Indeed
1. Given an example paragraph string and an integer N, write a function that returns the top N 
frequent words in the posting and the frequencies for each word.

2. What's the function run-time?

Example:

n = 3
posting = """
Herbal sauna uses the healing properties of herbs in combination with distilled water. 
The water evaporates and distributes the effect of the herbs throughout the room. 
A visit to the herbal sauna can cause real miracles, especially for colds. 
"""

output = [
    ('the', 6), 
    ('herbal', 2), 
    ('sauna', 2),
]

'''


def getKey(item):
    return item[1]

def most_frequent_n_words(text_chunk, n):
    words = text_chunk.lower().replace('\n', '').replace('.', '').replace(',', '').replace('[^A-Za-z0-9 ]+', '').split(' ')
    d = dict()
    for word in words:
        if word in d:
            d[word] += 1
        else:
            d[word] = 1
    
    print(sorted(d.items(), key = getKey)[-n:])

most_frequent_n_words(posting, n)
