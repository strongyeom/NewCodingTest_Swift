func solution(_ s:String) -> Bool {
    var result: Bool = false
        if s.count == 4 || s.count == 6 {
        guard let number = Int(s) else { return result }
            result = true
          }

          

 
   return result
}