class Solution {
    func prisonAfterNDays(_ cells: [Int], _ N: Int) -> [Int] {
        var dict: [[Int]: [Int]] = [:]
        var last = cells
        var N = N, i = 0
        var periodApplied = false
        while i < N {
            if let current = dict[last] {
                if !periodApplied {
                    var current = current
                    var period = 1
                    while current != last {
                        current = dict[current]!
                        period += 1
                    }
                    N = i - i % period + period + N % period
                    periodApplied = true
                }
                last = current

            } else {
                var current = last
                for j in last.indices {
                    if j > 0 && j+1 < last.count && last[j-1] == last[j+1] {
                        current[j] = 1
                    } else {
                        current[j] = 0
                    }
                }
                dict[last] = current
                last = current
            }

            i += 1
        }
        return last
    }
}