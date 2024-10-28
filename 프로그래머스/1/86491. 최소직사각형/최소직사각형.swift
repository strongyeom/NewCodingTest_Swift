import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    var x: [Int] = []
    var y: [Int] = []
    
    for i in 0..<sizes.count {
        let sortedSize = sizes[i].sorted(by: <)
        x.append(sortedSize[0])
        y.append(sortedSize[1])
    }
    
    return x.max()! * y.max()!
}