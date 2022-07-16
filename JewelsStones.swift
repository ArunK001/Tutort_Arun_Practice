class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var count = 0
        for (i, char) in stones.enumerated() {
            if jewels.contains(char) {
                count += 1
            }
        }
        return count
    }
}