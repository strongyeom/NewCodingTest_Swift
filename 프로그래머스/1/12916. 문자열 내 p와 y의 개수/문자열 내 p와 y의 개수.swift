import Foundation

func solution(_ s:String) -> Bool {
    
    // guard !s.contains("p") && !s.contains("y") else { return true }
    
    var pcount = 0
    var ycount = 0
    
    _ = s
        .map { $0.lowercased() }
        .map {
            if $0 == "p" {
                pcount += 1
            } else if $0 == "y" {
                ycount += 1
            }
        }
    print(pcount)
    print(ycount)
    let answer = pcount - ycount == 0 ? true : false
    
    return answer
    
}