import Foundation

func solution(_ numbers:[Int]) -> Int {
    
    var total = 45
    
    var calnumber = numbers.reduce(0) { $0 + $1 }
    
    var result = total - calnumber
    
    
    return result
}