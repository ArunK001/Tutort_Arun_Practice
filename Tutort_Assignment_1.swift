class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var max: Int = 0
        
        for i in stride(from: 0, through: accounts.count - 1, by: 1) {
            let array = accounts[i]
            
            var totalWealth = 0
            for wealth in array {
                totalWealth += wealth
            }
            
            if totalWealth > max {
                max = totalWealth
            }
        }
        
        return max
    }
}

