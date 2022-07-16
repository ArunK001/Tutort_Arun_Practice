class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var flat = [[Int]]()
        for i in 0..<matrix[0].count {
            var arr: [Int] = []
            for subarray in matrix {
                arr.append(subarray[i])
            }
            
            flat.append(arr)
        }
        
        return flat
    }
}

class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        return matrix.first!.indices.map { index in
            matrix.map{ $0[index] }
        }
    }
}

//Most efficient
class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var transposeArr = Array(repeatElement(Array(repeatElement(0, count: matrix.count)), count: matrix[0].count))
        
        for i in 0..<matrix[0].count {
            for j in 0..<transposeArr[i].count {
                transposeArr[i][j] = matrix[j][i]
            }
        }
        
        return transposeArr
    }
}