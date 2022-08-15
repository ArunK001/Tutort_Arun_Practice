func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        var closest: Int = Int.max 
        var cs = Int.max
        var nums = nums.sorted()
        var i = 0
        while i < nums.count - 2 {
            var j = i + 1
            var k = nums.count - 1 
            while j < k {
                let sum = nums[i] + nums[j] + nums[k]
                let difference = abs(target - sum)
                if difference < closest {
                    closest = difference
                    cs = sum
                }
                if sum == target {
                    return sum
                } else if sum > target {
                    k -= 1
                } else {
                    j += 1
                }
            }
            i += 1
        }
        return cs
    }