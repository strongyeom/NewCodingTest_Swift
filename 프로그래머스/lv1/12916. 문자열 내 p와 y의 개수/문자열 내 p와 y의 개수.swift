import Foundation

func solution(_ s:String) -> Bool {
    
    
    let equalString = s.lowercased()
    
    var pCount: Int = equalString.filter { $0 == "p"}.count
    var yCount : Int = equalString.filter { $0 == "y"}.count
    

    return pCount == yCount ? true : false
}