func solution(_ a:Int, _ b:Int) -> Int64 {
    
    let elemetArray = [a,b].map { Int64($0) }.sorted()
    var result: Int64 = 0
    
    
    for i in elemetArray[0]...elemetArray[1] {
        result += i
    }
    
    return result
}