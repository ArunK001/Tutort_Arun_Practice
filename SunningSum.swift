class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var tempNum: [Int] = []
        for i in stride(from: 0 , through: nums.count - 1, by: 1 ) {
            var sum = 0
            for j in stride(from: 0, through: i, by: 1) {
                sum += nums[j]
            }
            tempNum.append( sum )
        }
        return tempNum
    }
}

class Solution_1 {
    func runningSum(_ nums: [Int]) -> [Int] {
        var tempNum = nums
        for i in stride(from: 0 , through: nums.count - 1, by: 1 ) {
            var sum = i - 1 >= 0 ? tempNum[i]  + tempNum[ i - 1] : tempNum[i]
            tempNum[i] = sum
        }
        return tempNum
    }
}

//PrefixSum