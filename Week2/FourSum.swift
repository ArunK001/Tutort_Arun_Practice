class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
    guard nums.count >= 4 else {
        return []
    }
    var nums = nums
    nums.sort()
    var result = [[Int]]()
    let n = nums.count
    for i in 0..<n-3 {
        for j in (i+1)..<n-2 {
            var k = j + 1
            var l = n - 1
            while k < l {
                let currentSum = nums[i] + nums[j] + nums[k] + nums[l]
                if currentSum == target {
                    if !result.contains([nums[i], nums[j], nums[k], nums[l]]) {
                        result.append([nums[i], nums[j], nums[k], nums[l]])
                    }
                    k += 1
                    l -= 1
                } else if currentSum < target {
                    k += 1
                } else {
                    l -= 1
                }
            }
        }
    }
    return result
}
}