class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        for index in (0..<nums.count).reversed() {
            if nums[index] == 0 {
                nums.remove(at: index)
                nums.append(0)
            }
            
            print(nums)
        }
    }
}

class SolutionOptimal {
    func moveZeroes(_ nums: inout [Int]) {
        let before = nums.count
         nums = nums.filter{ $0 != 0 }
        nums = nums.filter{ $0 != 0 }
        for _ in 0..<before-nums.count {
            nums.append(0)
        }
    }
}