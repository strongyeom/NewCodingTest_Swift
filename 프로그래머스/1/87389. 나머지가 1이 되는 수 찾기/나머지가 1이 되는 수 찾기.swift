func solution(_ n:Int) -> Int {
    
    // 약수를 구하고 1 다음으로 큰 수 !!!
    let squrtN = Int(Double(n).squareRoot())
    var emptyArray12: [Int] = []
    for i in 1...squrtN {
        if (n-1) % i == 0 {
            emptyArray12.append(i)
            
            if i != (n-1) / i {
                emptyArray12.append((n-1) / i)
            }
        }
    }
    
    let sortArray = emptyArray12.sorted(by: <)
    return sortArray[1]
}