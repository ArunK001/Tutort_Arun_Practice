class Solution {
   func thirdMax(_ nums: [Int]) -> Int {
        var maxVals: (first: Int, sec: Int, third: Int) = (Int.min, Int.min, Int.min)
        
        guard !nums.isEmpty else { return 0 }
        guard nums.count > 1 else { return nums.first! }
        
        for num in nums {
            if maxVals.first < num {
                maxVals.first = num
            }
        }
        
        for num in nums {
            if maxVals.sec < num, maxVals.first > num {
                maxVals.sec = num
            }
        }
        
       var exist = false
        for num in nums {
            if maxVals.third < num, maxVals.sec > num {
                exist = true
                maxVals.third = num
            }
        }

        return exist ? maxVals.third : maxVals.first
    }
}