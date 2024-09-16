import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    
    var result: Int = 0
    
    for i in left...right {
        var count: Int = 0
        var sqrtNum = Int(Double(i).squareRoot())
        
        for j in 1...sqrtNum {
            if i % j == 0 {
                count += 1
                if j != i / j {
                    count += 1
                }
            }
        }
        
        if count % 2 == 0 {
            result += i
        } else {
            result -= i
        }
        
    }
    
    return result
}