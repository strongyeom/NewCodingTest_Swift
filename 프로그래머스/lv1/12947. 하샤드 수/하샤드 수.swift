import Foundation

func solution(_ x:Int) -> Bool {
    // 해당 자릿수를 더해서 x가 나눠지면 true 아니면 false
    let stringToInt = String(x)
    
    let first = stringToInt.map { Int(String($0))! }.reduce(0) { $0 + $1 }
    
    
    
    return x % first == 0 ? true : false
}