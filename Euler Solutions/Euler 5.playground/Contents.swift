
/*
 EULER PROBLEM #5
 
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
 
 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 */





/*   WORK IN PROGRESS
import Foundation

func gcd(m: Int, _ n: Int) -> Int {
  var a = 0
  var b = max(m, n)
  var r = min(m, n)
  
  while r != 0 {
    a = b
    b = r
    r = a % b
  }
  return b
}


func lcm(m: Int, n: Int) -> Int {
  return m*n / gcd(m,n)
}




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
  
  func isDivisibleBy(num: Int) -> Bool {
    return self % num == 0
  }
  
  
  func getGPF() -> Int {
    let arr = [Int](1...self).reverse()
    Array(arr)
    for i in arr {
      if self % i == 0 {
        if i.isPrime() {
        return i
        }
      }
    }
  return 1
  }
  
  
  func getPrimeFactors() -> [Int] {
    var primeFactors = [Int]()
    let arr = [Int](1...self).reverse()
    Array(arr)
    for i in arr {
      if self % i == 0 {
        if i.isPrime() {
          primeFactors.append(i)
        }
      }
    }
    return primeFactors
  }
  
  
  
  
}

10.getGPF()
10.getPrimeFactors()




func smallestPositiveNumDivisibleBy(min min: Int, max: Int) -> Int {
 // var winner = 0
  
  let allNums = [Int](min...max)
  
  var aggregatePrimeFactors = [[Int]]()
  var targetPrimeFactors = [Int]()
  
  for n in allNums {
    aggregatePrimeFactors.append(n.getPrimeFactors())
  }
  

  
  
  
  
  
  
  
  
  
  let primes = [Int](min...max).filter { $0.isPrime() }
  primes
  
  let nonPrimes =  [Int](min...max).filter { !$0.isPrime() }
  nonPrimes
  
  
  
  let minNum = primes.reduce(1, combine: *)

  let other = nonPrimes.reduce(1, combine: *)
 // other.getGPF()
  
  
  var allGPFs = [Int]()

  for num in allNums {
    allGPFs.append(num.getGPF())
  }
  allGPFs
  let temp = allGPFs.reduce(1, combine: *)
  var uniques = [Int]()
  for i in allGPFs {
    if !uniques.contains(i) {
      uniques.append(i)
    }
  }
  uniques
  let temp2 = uniques.reduce(1, combine: *)

  
  
  var gpfs = [Int]()
  for num in nonPrimes {
    gpfs.append(num.getGPF())
  }
  gpfs.sortInPlace(>)
  
  let newCandidate = 9
  Double(2520)/Double(newCandidate)
  Double(2520)/Double(minNum)
  210 * 12
  
//  let newCandidate = minNum * gpfs[0]
  
  2520/minNum
  
 // var primeFactors
  
  
  
  var checksOut = false
  for num in nonPrimes {
    let testNum = minNum * num
    
    for num in nonPrimes {
      if !testNum.isDivisibleBy(num) {
        print("hi")
        break
      }
    }
    
  }
  
  
  
  return 0
}

smallestPositiveNumDivisibleBy(min: 1, max: 10)

*/

