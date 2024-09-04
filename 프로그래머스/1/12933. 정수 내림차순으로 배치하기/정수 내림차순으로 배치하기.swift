func solution(_ n:Int64) -> Int64 {
    // n을 문자열로 변환한 후, 각 자리수를 배열로 만듭니다.
    var numberArray = String(n).map { Int(String($0))! }
    /* 
    1. 선택 정렬을 수행합니다.
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
    */
    
    // 2. 버블 정렬
    // 0부터 count -1을 반복문 돈다
    // 1번째와 비교, 2번째와 비교를 하고 -1 씩 
    
    for index in 0..<numberArray.count - 1 {
        // 배열 자체가 정렬되어있을때 실행하지 않게 flag 설정
        var isSwap = false
        for index2 in 0..<((numberArray.count - index) - 1) { 
            if numberArray[index2] < numberArray[index2 + 1] {
                numberArray.swapAt(index2, (index2 + 1))
                isSwap = true
            }
        }
        // if isSwap == false { return 1 }
    }
    
    // 정렬된 배열을 다시 숫자로 변환합니다.
    let result = Int64(numberArray.map { String($0) }.joined())!
    return result
}