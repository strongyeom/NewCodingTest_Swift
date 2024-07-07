import Foundation

func solution(_ numbers:[Int]) -> Int {
    
    let total = 45
   
    let sum = numbers.reduce(0) { $0 + $1 }
    
    
    return total - sum
}