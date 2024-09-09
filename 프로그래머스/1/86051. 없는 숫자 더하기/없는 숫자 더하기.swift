import Foundation

func solution(_ numbers:[Int]) -> Int {
    
   let total = (0...9).map { $0 }.reduce(0) { $0 + $1 }
    let value = numbers.reduce(0) { $0 + $1 }
    let result = total - value
    return result
}