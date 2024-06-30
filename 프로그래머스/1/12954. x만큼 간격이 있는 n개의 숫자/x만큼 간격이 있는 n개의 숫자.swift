func solution(_ x:Int, _ n:Int) -> [Int64] {
    
    // n의 갯수만큼 x를 계속하고, n개만큼 만들어주시오
    var EmptyArray: [Int] = []
    var initX: Int = 0
    for i in 0..<n {
        initX += x
        EmptyArray.append(initX)
    }

    return EmptyArray.map { Int64($0) }
}