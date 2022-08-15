func rotate(_ matrix: inout [[Int]]) {
        guard matrix.count > 0 else {return}
        //Swap different index in there respective places or transpose of matrix
        for row in 0..<matrix.count {
            for col in (row..<matrix.count).reversed() {
                if row == col {
                    continue
                }
                let temp = matrix[col][row]
                matrix[col][row] = matrix[row][col]
                matrix[row][col] = temp
            }
        }
		//then, Reverse the list
        for i in 0..<matrix.count {
            var first = 0
            var last = matrix[i].count - 1
            while first < last {
                let temp = matrix[i][first]
                matrix[i][first] = matrix[i][last]
                matrix[i][last] = temp
                first += 1
                last -= 1
            }
        }
    }