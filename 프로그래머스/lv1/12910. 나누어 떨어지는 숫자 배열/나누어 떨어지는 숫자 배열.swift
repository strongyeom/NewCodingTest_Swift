import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
   
    let result = arr.filter { $0%divisor == 0 }.sorted()

    return result.count >= 1 ? result : [-1]
}