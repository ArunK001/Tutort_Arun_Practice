class Solution {
    func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
        var sortedArr = arr.sorted(by: <)
        //sortedArr
        var minGap = Int.max
        var result: [[Int]] = []
        
        for (i, num) in sortedArr.enumerated() {
            if i+1 < sortedArr.count {
                minGap = min(minGap, sortedArr[i + 1] - num)
            }
        }
        
        for (i, num) in sortedArr.enumerated() {
            if  i+1 < sortedArr.count, sortedArr[i + 1] - num == minGap {
                result.append([num, sortedArr[i+1]])
            }
        }
        
        return result
    }
}