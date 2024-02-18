import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    

    // 두번째 방법 Set 활용
    var lottosDic: [Int: Int] = [1:6, 2:5, 3:4, 4:3, 5:2, 6:1]
    var winNumsSet = Set(win_nums)
    var lottosSet = Set(lottos)
    var result: [Int] = []
    
    var successNumberCount = winNumsSet.intersection(lottosSet).count
    print(successNumberCount)
    var zeroCount = lottos.filter { $0 == 0 }.count
    
    
    var first = rank(from : successNumberCount + zeroCount)
    var second = rank(from : successNumberCount)
   
    result = [first, second]
    return result
}

// 순위를 계산하는 함수입니다. 맞춘 번호의 개수에 따라 순위를 반환합니다.
// 맞춘 번호가 없는 경우(0개) 또는 순위에 해당하지 않는 경우 최저 순위를 반환합니다.
func rank(from correctCount: Int) -> Int {
    switch correctCount {
    case 6: return 1
    case 5: return 2
    case 4: return 3
    case 3: return 4
    case 2: return 5
    default: return 6
    }
}