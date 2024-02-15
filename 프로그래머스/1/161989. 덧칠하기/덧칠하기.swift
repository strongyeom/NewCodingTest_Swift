import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    
    // 벽 구현
       var walls = Array(repeating: false, count: n + 1)
       var ans = 0

    // 덧칠이 필요한 부분을 true로 표시
    for i in section {
        walls[i] = true
    }
    // 벽을 순회하면서
    for i in 1...n {
        // 칠해야 할 곳을 만난다면
        if walls[i] {
            // m 크기만큼 색칠한다.
            for k in i..<(i+m) {
                guard k <= n else { break }
                walls[k] = false
            }
            ans += 1
        }
    }
    
    // 다른 풀이
    /*
         // 이미 칠해진 영역
    var painted = 0
    // 칠해야 하는 구역을 순회하면서
    for i in section {
        // 아직 해당 구역이 칠해지지 않았다면
        if painted < i {
            // 해당 구역을 시작점으로 m 크기만큼 색칠
            painted = i + m - 1
        }
        ans += 1
    }
    */
    
    return ans
}