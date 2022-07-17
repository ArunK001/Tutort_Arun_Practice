class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var majEleDict = Dictionary<Int, Int>()
        for i in 0..<nums.count {
            let val = majEleDict[nums[i]] ?? 0
            majEleDict[nums[i]] = val + 1
        }
        
        for (key, val) in majEleDict where Double(val) >= ceil(Double(nums.count)/2.0) {
            return key
        }
        
        return 0
    }
}

class SolutionOptimal {
    func majorityElement(_ nums: [Int]) -> Int {
        let majorityNum = nums.count / 2
        var saveNums = [Int:Int]()
        
        for num in nums {
            saveNums[num, default: 0] += 1
            if saveNums[num]! > majorityNum {
                return num
            }
        }
        
        return 0
    }
}

class Solution2ndOptimal {
    func majorityElement(_ nums: [Int]) -> Int {
        var majority = nums[0]
        var count = 1
        
        for i in nums {
            if i == majority{
                count += 1
            }else{
                count -= 1
            }
            
            if count == 0 {
                majority = i
                count = 1
            }
        }
        
        return majority
    }
}