class Solution {
    func isHappy(_ n: Int) -> Bool {
        var sum = n
        var container:Set<Int> = []
        while (sum != 1) {
            if(container.contains(sum)) {
                return false
            }
            container.insert(sum)
            sum = getSumOfSquareOfDigits(sum)
        }
        return true
    }
    
    func getSumOfSquareOfDigits(_ num:Int) ->Int {
        var sum = 0
        var number = num
        while (number > 0) {
            sum = sum + (number % 10) * (number % 10)
            number = number/10
        }
        return sum
    }
}


//Swift Code
class Solution {
    func isHappy(_ n: Int) -> Bool {
        var si = Set<Int>(), i = n
        while !si.contains(i) && i != 1 {
            si.insert(i)
            print(si)
            i = String(i).reduce(0, {
                let j = Int(String($1))!;
                print(j)
                return $0 + j*j
            })
        }
        
        return i == 1
    }
}