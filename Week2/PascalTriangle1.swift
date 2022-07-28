class Solution {
        func generate(_ numRows: Int) -> [[Int]] {
        var array: [[Int]] = []
        array.append([1])
        
        for i in 1..<numRows {
            let prevArr = array[i - 1]
            var arr = [Int]()
            
            for j in 0..<prevArr.count - 1{
                let sum = prevArr[j] + prevArr[j + 1]
                arr.append(sum)
            }
            
            
            arr.isEmpty ? arr.append(1)  : arr.insert(1, at: 0)
            arr.append(1)
            
            array.append(arr)
        }
        
        return array
    }
}

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {        
       var matrix = Array(repeating: Array(repeating: 0, count: numRows), count: numRows)
       for i in 0..<numRows {
           matrix[i][0] = 1
           for j in 1..<numRows where i > 0 {
               matrix[i][j] = matrix[i-1][j] + matrix[i-1][j-1]
          }          
       }        
       return matrix.compactMap{ $0.filter { $0 > 0 }}
    }
}