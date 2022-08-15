func diagonalSum(_ mat: [[Int]]) -> Int {
        var res = 0
        let n = mat.count
        for i in 0..<mat.count {
            res += mat[i][i] // Primary diagonals are row = column! 
            res += mat[n-1-i][i] // Secondary diagonals are row + column = n-1!
        }
        return n % 2 == 0 ? res : res - mat[n/2][n/2]
    }