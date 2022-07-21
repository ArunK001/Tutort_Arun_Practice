 func getLucky(_ s: String, _ k: Int) -> Int {
        var numString = ""
        var result = 0
        
        s.forEach{
            numString += String($0.asciiValue!-96)
        }
        
        for _ in 1...k {
            result = 0
            numString.forEach{
                result += Int(String($0))!
            }
            numString = String(result)
        }
        
        
        return result
    }