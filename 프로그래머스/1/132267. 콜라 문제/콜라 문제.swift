import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    
    
    var totalN = n
    var result : Int = 0
    
    while totalN >= a {
        var rebound = totalN / a * b
        result += rebound
        totalN = (rebound) + (totalN % a)
        
    }
    return result
}