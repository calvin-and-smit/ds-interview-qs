'''
Buy or Sell

1. Given a list of stock prices in ascending order by datetime, write a function that 
outputs the max profit by buying and selling at a specific interval.

Example:

stock_prices = [10,5,20,32,25,12]

get_max_profit(stock_prices) -> 27
 

2. Making it harder, given a list of stock prices and date times in ascending order by 
datetime, write a function that outputs the profit and start and end dates to buy and sell for max profit.

Example:

stock_prices = [10,5,20,32,25,12]
dts = [
    '2019-01-01', 
    '2019-01-02',
    '2019-01-03',
    '2019-01-04',
    '2019-01-05',
    '2019-01-06',
]

get_profit_dates(stock_prices, dts) -> (27, '2019-01-02', '2019-01-04')

'''

