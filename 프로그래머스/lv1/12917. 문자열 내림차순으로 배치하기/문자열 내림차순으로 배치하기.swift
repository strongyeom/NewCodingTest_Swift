func solution(_ s:String) -> String {
    var lowerString: [String] = []
    var uppserString: [String] = []
    
    for i in s {
        if i.isUppercase {
            uppserString.append(String(i))
        } else {
            lowerString.append(String(i))
        }
        
    }
  
    var aa = lowerString.sorted(by: >).joined()
    var bb = uppserString.sorted(by: >).joined()

    return aa+bb
}