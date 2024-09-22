func solution(_ s:String) -> String {
    
    let separated = s.components(separatedBy: " ")
    var doubleArray: [String] = []
    for i in separated {
        var array: [String] = []
        for j in i {
            array.append(String(j))
        }
        
        for z in 0..<array.count {
            if (z+1) % 2 != 0 {
                array[z] = array[z].uppercased()
            } else {
                array[z] = array[z].lowercased()
            }
            
            if z == 0 {
                array[z] = array[z].uppercased()
            }
        }
        let joinString = array.joined()
        doubleArray.append(joinString)
    }

    return doubleArray.joined(separator: " ")
}