import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var total = 0
    
    for i in 1...count {
        total += price * i
        
    }
    print(total)
    
    var answer:Int64 = Int64(total - money )
    
    return answer < 0 ? 0 : answer
}