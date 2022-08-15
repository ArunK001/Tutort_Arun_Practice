class Solution {
    func minOperations(_ logs: [String]) -> Int {
          var count = 0
          for log in logs where log != "./" {
            count += log == "../" ? -1 : 1
            count = count < 0 ? 0 : count
          }
          return count
    }
}