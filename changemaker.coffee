# ChangeMaker takes in a price and an array of coins and returns
# the most efficient array of pennies, nickles, dimes, and quarters 
# in change.

quarter=0
penny=0
nickel=0
dime=0

recursion = (totalDifference) -> 
    console.log totalDifference + " inside recursion"
    if totalDifference-25 >= 0
        quarter++
        totalDifference=totalDifference-25
        return recursion(totalDifference)
    if totalDifference-10 >= 0
        quarter++
        totalDifference=totalDifference-10
        return recursion(totalDifference)
    if totalDifference-5 >= 0
        quarter++
        totalDifference=totalDifference-5
        return recursion(totalDifference)
    if totalDifference-1 >= 0
        quarter++
        totalDifference=totalDifference-1
        return recursion(totalDifference)
    else 
        return console.log [quarter, dime, nickel, penny]

changeMaker = (price, payment) -> 
  newArr = payment.map (x) -> x * 100
  newPrice = price * 100
  console.log newArr
  totalPay = newArr.reduce (x, y) -> x + y
  totalDifference=totalPay-newPrice
  console.log totalDifference + " is my totalDifference"
  return recursion(totalDifference) 


changeMaker(0.5, [0.25, 0.25, 0.25])

