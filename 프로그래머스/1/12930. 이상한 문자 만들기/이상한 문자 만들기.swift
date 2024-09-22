func solution(_ s:String) -> String {
    
    let separated = s.components(separatedBy: " ")
    var doubleArray: [String] = []
    
    for i in separated {
        var array: String = ""
        for (index, value) in i.enumerated() {
            if (index + 1) % 2 != 0 {
                array += value.uppercased()
            } else {
                array += value.lowercased()
            }
        }
        doubleArray.append(array)
    }

    return doubleArray.joined(separator: " ")
}