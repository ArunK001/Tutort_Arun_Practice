func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 2 else { return [] }
        
        let sorted = nums.sorted()
        var res: [[Int]] = .init()

        for i in 0..<sorted.count - 2 {
            let num = sorted[i]
            var left = i + 1, right = sorted.count - 1
            while left < right {
                let leftNum = sorted[left], rightNum = sorted[right]
                let sum = num + leftNum + rightNum
                if sum == 0 && !res.contains([num, leftNum, rightNum]) {
                    res.append([num, leftNum, rightNum]) 
                    left += 1
                } else if sum < 0 {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }

        return res
    }
