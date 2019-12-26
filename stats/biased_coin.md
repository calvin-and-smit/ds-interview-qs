# Biased five out of six

## This question was asked by: Google

Let's say we're given a biased coin that comes up heads 30% of the time when tossed.

What is the probability of the coin landing as heads exactly 5 times out of 6 tosses?

Answer:

HHHHHT -> (3/10)\*(3/10)\*(3/10)\*(3/10)\*(3/10)\*(7/10)<br/>
HHHHTH -> (3/10)\*(3/10)\*(3/10)\*(3/10)\*(7/10)\*(3/10)<br/>
HHHTHH -> (3/10)\*(3/10)\*(3/10)\*(7/10)\*(3/10)\*(3/10)<br/>
HHTHHH -> (3/10)\*(3/10)\*(7/10)\*(3/10)\*(3/10)\*(3/10)<br/>
HTHHHH -> (3/10)\*(7/10)\*(3/10)\*(3/10)\*(3/10)\*(3/10)<br/>
THHHHH -> (7/10)\*(3/10)\*(3/10)\*(3/10)\*(3/10)\*(3/10)<br/>


P(5 out of 6 heads) = (3/10)^5\*(7/10)\*6
                    = 0.010206
