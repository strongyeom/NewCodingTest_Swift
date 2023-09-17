func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
   
    var answer = [[Int]]()
    
    for i in 0..<arr1.count {
        var result = [Int]()
        for j in 0..<arr1[i].count {
            var addCount = arr1[i][j] + arr2[i][j]
            result.append(addCount)
        }
        
        answer.append(result)
        
    }
    
    return answer
}