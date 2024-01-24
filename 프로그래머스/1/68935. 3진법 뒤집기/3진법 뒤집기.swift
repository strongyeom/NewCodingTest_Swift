import Foundation

func solution(_ n:Int) -> Int {
    
    var value = n
    var threeValue: [Int] = []
    var totalValue: Int = 0
    
    while value > 0 {
        var dividedValue = value % 3
        
        threeValue.append(dividedValue)
        value = value / 3
    }
    
    for i in 0..<threeValue.count {
        var three = pow(3.0, Double(threeValue.count - (i + 1)))
        totalValue += Int(three) * threeValue[i]
    }
    
    // 2진수 -> 10 진수
    // 1011 = 1 * 2^3 + 0 * 2^2 + 1 * 2^1 + 1 * 2^0
    
    return totalValue
}