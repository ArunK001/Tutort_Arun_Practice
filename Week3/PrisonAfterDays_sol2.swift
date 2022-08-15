class Solution {
    func prisonAfterNDays(_ cells: [Int], _ N: Int) -> [Int] {          
        var pre = cells
        var cur = [Int](repeating: 0, count: 8)
        //The sequence repeats after 14 days
        let N = (N - 1) % 14 + 1
        for _ in 0..<N {
            for j in 1..<7 {
                cur[j] = (pre[j-1] == pre[j+1]) ? 1 : 0
            }
            pre = cur
        }
        return cur
    }
}