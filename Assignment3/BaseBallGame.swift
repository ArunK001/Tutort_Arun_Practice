class Solution {
    func calPoints(_ ops: [String]) -> Int {
        var array = [Int]()
        for i in 0..<ops.count {
            switch ops[i] {
            case "+":
                let sum = array.last! + array[array.count - 2]
                array.append(sum)

            case "D":
                let doubleVal = array.last! * 2
                array.append(doubleVal)

            case "C":
                print(array)
                array.removeLast()

            default:
                array.append(Int(ops[i])!)
            }
        }

        return  array.reduce(0) { f, l in
            return f + l
        }
    }
}