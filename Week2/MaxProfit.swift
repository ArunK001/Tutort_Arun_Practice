class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
   	 	guard prices.count > 1 else { return 0 }
    	var best = 0, current = 0
    	for index in 1..<prices.endIndex {
        	current = max(0, current + prices[index] - prices[index-1])
        	best = max(best, current)
    	}
    	return best
	}
}