func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var answer = 0
    var score = score.sorted{$0 > $1}
    var start = m-1
    while start < score.count {        
        answer += m*score[start] // 정렬을 하고 해당번째로 끊기고 끊기는 수가 가장 작은 수 
        start += m
    }

    return answer
}