import Foundation

func solution(_ babbling:[String]) -> Int {
    
    let possible = ["aya", "ye", "woo", "ma"]
    var count: Int = 0
    
    for element in babbling {
        var str = element
       
        for j in 0..<possible.count {
            str = str.replacingOccurrences(of: possible[j], with: "\(j+1)")
        }
        
        if Int(str) != nil && !str.contains("11")  && !str.contains("22") && !str.contains("33") && !str.contains("44") {
            count += 1
        }
    }
    
    return count
}