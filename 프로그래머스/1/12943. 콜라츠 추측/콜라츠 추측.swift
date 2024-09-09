func solution(_ num:Int) -> Int {
    
    guard num != 1 else { return 0 }
    
    var sum: Int = num
    var count: Int = 0
    while sum != 1 {
        count += 1
        sum = sum % 2 == 0 ? sum / 2 : (sum * 3) + 1
        
        if count == 500 {
            return -1
        }
    }
    
    return count
}