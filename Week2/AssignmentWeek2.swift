class Solution {
	func rotate(_ matrix: inout [[Int]]) {
        guard matrix.count > 0 else {return}
        //Swap different index in there respective places or transpose of matrix
        for row in 0..<matrix.count {
            for col in (row..<matrix.count).reversed() {
                if row == col {
                    continue
                }
                let temp = matrix[col][row]
                matrix[col][row] = matrix[row][col]
                matrix[row][col] = temp
            }
        }
		//then, Reverse the list
        for i in 0..<matrix.count {
            var first = 0
            var last = matrix[i].count - 1
            while first < last {
                let temp = matrix[i][first]
                matrix[i][first] = matrix[i][last]
                matrix[i][last] = temp
                first += 1
                last -= 1
            }
        }
    }

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

	func maxProfit(_ prices: [Int]) -> Int {
   	 	guard prices.count > 1 else { return 0 }
    	var best = 0, current = 0
    	for index in 1..<prices.endIndex {
        	current = max(0, current + prices[index] - prices[index-1])
        	best = max(best, current)
    	}
    	return best
	}

	func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        
        for i in prices.indices.dropFirst() { 
            let priceChange = prices[i] - prices[i-1]
            if priceChange > 0 { 
                maxProfit += priceChange
            }
        }
        return maxProfit
    }

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

    func getRow(_ rowIndex: Int) -> [Int] {
        let index = rowIndex + 1
        guard index > 2 else { return [Int](repeating: 1, count: index) }
        var lastRow = [Int](repeating: 1, count: 2)
        for i in 3...index {
            var row = [Int](repeating: 1, count: i)
            for n in 1...i/2 {
                row[n] = lastRow[n-1] + lastRow[n]
                row[i - n - 1] = row[n]
            }
            lastRow = row
        }
        return lastRow
    }

    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        if n == 0 {
            return
        }
        
        if m == 0 {
            nums1 = nums2
            return
        }
        
        var index1 = m - 1
        var index2 = n - 1
        var index = m + n - 1
        
        while index >= 0 && index2 >= 0 {
            if index1 < 0 {
                nums1[index] = nums2[index2]
                index2 -= 1
                index -= 1
                continue
            } 
            
            if nums1[index1] >= nums2[index2] {
                nums1[index] = nums1[index1]
                index1 -= 1
                
            } else {
                nums1[index] = nums2[index2]
                index2 -= 1
            }
            
            index -= 1
        }
        
    }

	func generate(_ numRows: Int) -> [[Int]] {
        var array: [[Int]] = []
        array.append([1])
        
        for i in 1..<numRows {
            let prevArr = array[i - 1]
            var arr = [Int]()
            
            for j in 0..<prevArr.count - 1{
                let sum = prevArr[j] + prevArr[j + 1]
                arr.append(sum)
            }
            
            
            arr.isEmpty ? arr.append(1)  : arr.insert(1, at: 0)
            arr.append(1)
            
            array.append(arr)
        }
        
        return array
    }

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