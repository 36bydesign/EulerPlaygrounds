
/*
 EULER PROBLEM #7
 
 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
 
 What is the 10 001st prime number?
 
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
}


func generatePrimes(amount: Int) -> [Int] {
  var primes = [2]
  var x = 1
  
  for _ in 1..<amount {
    repeat {
      x += 2
    } while !x.isPrime()
    primes.append(x)
  }
  
  return primes
}

//let solution = generatePrimes(1000).last



