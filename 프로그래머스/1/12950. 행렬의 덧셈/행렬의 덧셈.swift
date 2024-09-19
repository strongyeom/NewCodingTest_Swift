func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    for i in 0..<arr1.count {
        var sum: [Int] = []
        for j in 0..<arr1[i].count {
            let count = arr1[i][j] + arr2[i][j]
            sum.append(count)
        }
        result.append(sum)
    }
    return result
}