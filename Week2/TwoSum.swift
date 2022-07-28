class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for index in 0..<nums.count {
            if let found = dict[target - nums[index]] {
                return [found, index]
            } else {
                dict[nums[index]] = index
            }
        }
        return []
    }
}