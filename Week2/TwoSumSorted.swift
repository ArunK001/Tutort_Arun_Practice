class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
       guard !nums.isEmpty else { return [] }
        var i = 0
        var j = nums.count - 1

        while i < j {
            guard nums[i] + nums[j] != target else { break }

            if nums[i] + nums[j] > target {
                j -= 1
            } else {
                i += 1
            }
        }

        return [i + 1, j + 1] 
    }
}