class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var sDict = [String : Int]()
        var tDict = [String : Int]()
        var diff: Character = Character(" ")
        
        for char in s {
            sDict["\(char)", default: 0] += 1
        }
        
        for char in t {
            tDict["\(char)", default: 0]  += 1
        }
        
        for (key, _) in tDict {
            if sDict[key] != tDict[key] {
                diff = Character(key)
            }
        }
        
        return diff
    }
}

class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var sDict = [String : Int]()
        var diff: Character = Character(" ")
        
        for char in s {
            sDict["\(char)", default: 0] += 1
        }
        
        for char in t {
            sDict["\(char)", default: 0]  += 1
        }
        
        for (key, _) in sDict {
            if sDict[key]!%2 != 0 {
                diff = Character(key)
            }
        }
        return diff
    }
}