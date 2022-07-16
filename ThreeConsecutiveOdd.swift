class Solution {
    func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
        let sortedArr = arr.sorted()
        var count = 0
        
        for i in stride(from: 0, through: sortedArr.count - 1, by: 1) {
            count = arr[i]%2 != 0 ? count + 1 : 0
            
            if count == 3 {
                return true
            }
        }
        
        return false
    }
}

//Sort Not req
class Solution1 {
    func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
        var count = 0
        
        for i in stride(from: 0, through: arr.count - 1, by: 1) {
            count = arr[i]%2 != 0 ? count + 1 : 0
            
            if count == 3 {
                return true
            }
        }
        
        return false
    }
}

//Most Optimal using AND operator
class Solution {
    func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
        var count = 0
        
        for val in arr where count != 3 {
            count = val & 1 == 1 ? count + 1 : 0
        }
        
        return count == 3
    }
}