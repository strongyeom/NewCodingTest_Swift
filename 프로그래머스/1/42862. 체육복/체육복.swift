import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    // 앞사람이 체육복이 없으면 빌려주고, 만약 앞 사람의 체육복이 있다면, 내 뒷 번호 학생에게 빌려준다. , 내 뒷 번호의 학생도 체육복이 있다면 안 빌려준다.
    // 중복된 값이 없으니 Set
    // 여벌 체육복을 가지고 있는 학생이 도난 당했을 수도 있으니 차집합
    
    var lostSet = Set(lost).subtracting(reserve)
    let reserveSet = Set(reserve).subtracting(lost).sorted()

    for reserve in reserveSet {
        // 내 앞 학생이 도난 당했다면
        if lostSet.contains(reserve - 1) {
            lostSet.remove(reserve - 1)
            // 내 뒷 사람이 도난 당했다면
        } else if lostSet.contains(reserve + 1) {
            lostSet.remove(reserve + 1)
        }
    }
    
    // 원래 총 인원수에서 lost.count 만큼 도난당했다면 전체 인원수에서 깍임 그렇지만 reserve를 이용해서 증가시켜 줄 수 있음
    // 해당 lostSet에 reserveSet의 요소를 활용하여 계속 체크 
    
    return n - lostSet.count
}