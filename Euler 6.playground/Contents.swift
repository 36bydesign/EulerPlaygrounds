
/*
 EULER PROBLEM #6
 
 The sum of the squares of the first ten natural numbers is,
 1^2 + 2^2 + ... + 10^2 = 385
 
 The square of the sum of the first ten natural numbers is,
 (1 + 2 + ... + 10)^2 = 55^2 = 3025
 
 Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
 
 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 */

extension Int {
  func sqrd() -> Int {
    return self * self
  }
}

let nums1to100 = [Int](1...100)
let sumOfSqures1to100 = nums1to100.map { $0 * $0 }.reduce(0,combine:+)
let squareOfSums1to100 = nums1to100.reduce(0,combine:+).sqrd()
//let solution = squareOfSums1to100 - sumOfSqures1to100






