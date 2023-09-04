import Foundation

func solution(_ arr:[Int]) -> [Int] {
    
    var filterdArr = arr
    
    if let number = filterdArr.firstIndex(of: filterdArr.min()!) {
        filterdArr.remove(at: number)
    }
    
    return filterdArr.isEmpty ? [-1] : filterdArr
}