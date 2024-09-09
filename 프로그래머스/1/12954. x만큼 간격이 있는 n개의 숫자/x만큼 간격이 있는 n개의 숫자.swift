func solution(_ x:Int, _ n:Int) -> [Int64] {
   
    /*
    // 1. 
     var count: Int = 0
    var addX = x
    var result: [Int] = []
    while count < n {
        count += 1
        result.append(addX)
        addX += x
    }
    */
    
    let result = (1...n).map { Int64($0 * x) }
    
    return result
}