import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    
    var result: Int = 0
    
    for i in left...right {
        
        var count = 0
        
        let sqrtValue = Int(sqrt(Double(i)))
        
        for j in (1...sqrtValue) {
            
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