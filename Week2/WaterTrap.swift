class Solution {
    func trap(_ height: [Int]) -> Int {
        var leftMax = [Int]()
        var rightMax = [Int]()
    
        var answer = 0
    
        leftMax.append(height[0])
        for index in 1..<height.count {
            let max = max(leftMax.last!, height[index])
            leftMax.append(max)
        }
    
        rightMax.insert(height[height.count-1], at: 0)
        for index in (0..<height.count-1).reversed() {
            let max = max(rightMax.first!, height[index])
            rightMax.insert(max, at: 0)
        }
    
        for (index, element) in height.enumerated() {
            let min = min(leftMax[index], rightMax[index])
            answer = answer + min - element
        }
    
        return answer
    }

//Other
    func trap(_ height: [Int]) -> Int
    {
    var water = 0
    var left = 0
    var right = height.count-1
    var currentLevel = 0
    while left < right
    {
        var lowerHeight: Int!
        var leftHeight = height[left]
        var rightHeight = height[right]

        if leftHeight < rightHeight
        {
            lowerHeight = leftHeight
            left += 1
        }
        else
        {
            lowerHeight = rightHeight
            right -= 1
        }
        currentLevel = max(lowerHeight, currentLevel)
        water += currentLevel - lowerHeight
    }
    return water
    }
}

