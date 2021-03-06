"""

Question 42 - Sentiment analysis for app reviews
________________________________________
You are given an array containing reviews for a popular iOS app below: 

reviews = ['app is good, but forced updates are too frequent', 
           'love this app, use it daily to log calories', 
           'free version of this app has way too many ads', 
           'app doesn't load, 0/10'] 

Your task is to determine sentiment from the review above. To do this you first decide to write code to find the count of 
individual words across all the reviews

"""

import re

def cleanText(s):
    return re.sub('[^A-Za-z ]+', '', str(s))

def countwords(reviews_list):
    wordcount = dict()
    for review in reviews_list:
        r = cleanText(review)
        words = r.split(' ')
        for word in words:
            if word in wordcount:
                wordcount[word] += 1
            else:
                wordcount[word] = 1
    
    return wordcount


countwords(reviews)
