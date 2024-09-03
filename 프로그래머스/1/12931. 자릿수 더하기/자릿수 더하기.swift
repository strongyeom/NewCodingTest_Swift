import Foundation

func solution(_ n:Int) -> Int {
    
    var divideN = n
    var result = 0
    while divideN != 0 {
        let num = divideN % 10 
        let value = divideN / 10
        result += num
        divideN = value
    }
    return result
}