func majorityElement(_ nums: [Int]) -> [Int] {
        guard nums.count > 0 else {
            return []
        }
        
        var storage: [Int: Int] = [:]
        var majorElements = Set<Int>()
        let threshold = nums.count / 3
        
        nums.forEach { num in
            let newCount = storage[num, default: 0] + 1
            storage[num] = newCount
                      
            if newCount > threshold {
                majorElements.insert(num)
            }
        }
        
        return Array(majorElements)
    }