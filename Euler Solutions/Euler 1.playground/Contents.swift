
/*
 EULER PROBLEM #1
 
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
 
 Find the sum of all the multiples of 3 or 5 below 1000.
 */

let naturalsBelow1000 = [Int](1..<1000)
let multiplesOf3and5 = naturalsBelow1000.filter { $0 % 3 == 0 || $0 % 5 == 0 }
let solution = multiplesOf3and5.reduce(0, combine: +)




