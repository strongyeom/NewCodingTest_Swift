func solution(_ n:Int, _ m:Int) -> [Int] {
    
    // 최소 공배수와 최대 공약수를 구하시오
    
    // 최소 공배수 : 어떤 수로 나누었을때 떨어지는 값 * 몫
    // 최대 공약수 : 어떤 수로 나누었을때 떨어지는 가장 큰 값 -> 공통으로 가지는 약수중 가장 큰 수
    var a1 = Set<Int>()
    var a2 = Set<Int>()
    var maxDivideInt: Int = 0
    var divideValue: [Int] = []
    // 20, 24
    for i in 1...n {
        for j in 1...n {
            if i*j == n {
                a1.insert(j)
            }
        }
    }
    print(a1)
    
    for k in 1...m {
        for q in 1...m {
            if k*q == m {
                a2.insert(q)
            }
        }
    }
    print(a2)
    
    let b1 = a1.intersection(a2).max()!
    print(b1)
    
    maxDivideInt = n > m ? n : m
    
    for i in 1...maxDivideInt {
        var a1 = n/i
        var b1 = m/i
        if n%i == 0 && m%i == 0 {
            divideValue.append(a1 * b1 * i)
        }
    }
    print(divideValue)
    let minValue = divideValue.min()!
    print(minValue)
    
    return [b1, minValue]
}