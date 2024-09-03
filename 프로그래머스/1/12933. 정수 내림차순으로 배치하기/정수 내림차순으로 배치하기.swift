func solution(_ n:Int64) -> Int64 {
    // n을 문자열로 변환한 후, 각 자리수를 배열로 만듭니다.
    var numberArray = String(n).map { Int(String($0))! }

    // 선택 정렬을 수행합니다.
    for index in 0..<numberArray.count - 1 {
        var maxIndex = index
        for j in (index + 1)..<numberArray.count {
            if numberArray[maxIndex] < numberArray[j] {
                maxIndex = j
            }
        }
        // 최소값을 찾은 후에 swap을 수행합니다.
        numberArray.swapAt(index, maxIndex)
    }
    
    // 정렬된 배열을 다시 숫자로 변환합니다.
    let result = Int64(numberArray.map { String($0) }.joined())!
    return result
}