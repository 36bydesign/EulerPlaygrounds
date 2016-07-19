
/*
 EULER PROBLEM #3
 
 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143 ?
 
 */

import Foundation

extension Int {
  func isPrime() -> Bool {
    guard self > 0 else { return false }
    guard self > 2 else { return true }
    let max = Int(ceil(sqrt(Double(self))))
    guard max > 1 else { return true }
    
    for i in 2...max {
      if self % i == 0 {
        return false
      }
    }
    return true
  }
  
  func findLeastPrimeFactor() -> Int {
    let max = Int(ceil(sqrt(Double(self))))
    for i in 2...max {
      if self % i == 0 {
        return i
      }
    }
    return 1
  }
}


func findLargestPrime(num: Int) -> Int {
  guard !num.isPrime() else { return num }
  return findLargestPrime(num / num.findLeastPrimeFactor())
}

//solution = findLargestPrime(600851475143)





