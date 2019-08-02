Question 41 - Rolling dice to win...again
________________________________________
Suppose you are playing a game where there are two fair six-sided dice, and every time you roll the dice and they add up to 9, you win $50. However, to roll the dice costs $20 to play. Is this a game you're willing to play? 

You should be able to attach an expected value to each dice roll using probability theory here.


Answer:

If its a one time roll, then no since the expected value is (-130/9)

If it can be multiple, then we can use something like below to calculate:
`
import numpy as np


def roll_the_dice(winning_sums, winnings, cost, max_tries):
    profit = 0
    tries = 0
    while profit <= 0:
        num1 = np.random.randint(1,6)
        num2 = np.random.randint(1,6)
        
        total = num1 + num2
        tries += 1
        if total in winning_sums:
            profit = profit + winnings - cost
        else:
            profit = profit - cost
            
        if tries >= max_tries:
            return("Max tries reached")
        
    return(tries, profit)
        

roll_the_dice([9], 50, 20, 100)
`
