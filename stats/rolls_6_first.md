# 21 | First to Six


This question was asked by: Microsoft


Amy and Brad take turns in rolling a fair six-sided die. Whoever rolls a "6" first wins the game. Amy starts by rolling first.

What's the probability that Amy wins?

Answer: 
probability of winning is throwing 6. prob of throwing 6 is 1/6.

prob of winning = 1/6

prob of losing is 1-(1/6)= 5/6

assuming that A start the game i.e A throws the die first and then B and the game goes on

suppose if A throws and if 6 comes then the game will stop and A will win. but if A loses then B will throw the die (here B will have to loose because according to question we want A to win the game) and then A will throw . and so on.

it will be like

A+ ~A~BA+ ~A~B~A~BA+..........

HERE  A denotes A wins and ~A means A loses i.e 6 does not come . similarly ~B means B loses.

this will form an infinite  geometric progession series

converting into probabilities we have

(1/6) + (5/6)(5/6)(1/6) + (5/6)(5/6)(5/6)(5/6)(1/6)+..........

prob of losing for A and B is throwing other than 6 i.e 5/6.

here first term is 1/6 and common ration is 25/36.

applying formula for the sum of an infinite geometric progression

= (first term) / (1-common ratio) = (1/6) / (1-(25/36)) = 6/11

prob of A winning is 6/11
