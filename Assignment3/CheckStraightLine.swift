class Solution {
func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        guard coordinates.count > 2 else { return true }
        
        let ratio = getRatio(coordinates[0],coordinates[1])
            
        for i in 2..<coordinates.count {
            let newRatio = getRatio(coordinates[0], coordinates[i])
            if newRatio != ratio { return false }
        }
        return true
    }
    
    func getRatio(_ num1: [Int], _ num2: [Int]) -> Float? {
        if num1[0] == num2[0] {
            return nil
        }
        return Float(num2[1] - num1[1]) / Float(num2[0] - num1[0])
    }
}