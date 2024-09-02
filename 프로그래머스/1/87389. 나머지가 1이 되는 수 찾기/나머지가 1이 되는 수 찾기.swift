import Foundation

func solution(_ n:Int) -> Int {
    guard n >= 3 && n <= 1000000 else { return 0 }
    
    // n-1 를 a 값
    // a 값의 약수 중에서 1을 제외한 가장 작은 값
    
    let initialValue = n - 1
    var intArray: [Int] = []
    for i in 1...initialValue {
        if initialValue % i == 0 {
            intArray.append(i)
        }
    }
    
    return intArray[1]
}