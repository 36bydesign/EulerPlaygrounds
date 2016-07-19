
/*
 EULER PROBLEM #4
 
 A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
 
 Find the largest palindrome made from the product of two 3-digit numbers.
 
 */

import Foundation

extension Int {
  func isPalindromic() -> Bool {
    let numStr = String(self)
    let numStrReversed = String(numStr.characters.reverse())
    return numStr == numStrReversed
  }
}


func greatestPalindrome(limit: Int, lowerLimit: Int) -> Int {
  let arr = [Int](lowerLimit...limit).reverse()

  var winner = 0
  
  for n1 in arr {
    for n2 in arr {
      let value = n1 * n2
      if value.isPalindromic() {
        if value > winner {
          winner = value
        }
      }
    }
  }
  return winner
}

//solution = greatestPalindrome(999, lowerLimit: 900)

