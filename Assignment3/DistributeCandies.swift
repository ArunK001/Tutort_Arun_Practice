class Solution {
    func distributeCandies(_ candyType: [Int]) -> Int {
        let maxCandies = candyType.count/2
        
        if Array(Set(candyType)).count < maxCandies {
            return Array(Set(candyType)).count
        } 
        else {
            return maxCandies    
        }
    }
}