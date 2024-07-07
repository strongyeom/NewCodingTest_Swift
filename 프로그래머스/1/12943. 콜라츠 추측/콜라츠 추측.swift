func solution(_ num:Int) -> Int {
    
    /*
     1-1. 입력된 수가 짝수라면 2로 나눕니다.
     1-2. 입력된 수가 홀수라면 3을 곱하고 1을 더합니다.
     2. 결과로 나온 수에 같은 작업을 1이 될 때까지 반복합니다.
     */
    // 주어진 수가 6이라면 6 → 3 → 10 → 5 → 16 → 8 → 4 → 2 → 1 이 되어 총 8번 만에 1이 됩니다.
    // 단, 주어진 수가 1인 경우에는 0을, 작업을 500번 반복할 때까지 1이 되지 않는다면 –1을 반환해 주세요.
    
    guard num != 1 else { return 0 }
    
    var initialNum = num
    var count = 0
    while initialNum > 1 {
        count += 1
        initialNum = initialNum % 2 == 0 ? initialNum / 2 : (initialNum * 3) + 1
        if initialNum == 1 {
            return count
        }
        
        if count == 500 {
            return -1
        }
    }
    
    return count
}