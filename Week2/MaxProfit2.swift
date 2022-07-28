class Solution {
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
}