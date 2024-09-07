func solution(_ x:Int) -> Bool {
    
    
    var initX = x
    var rest = 0
    while initX != 0 {
        rest += initX % 10
        initX = initX / 10
    }
    
    let result = x % rest == 0 ? true : false
    
    return result
}