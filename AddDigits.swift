class Solution {
    func addDigits(_ num: Int) -> Int {
        var sum = 0
        var n = num
        
        while n > 0 {
            sum = sum + n%10
            n /= 10
            
            if n <= 0, sum > 9 {
                    n = sum
                    sum = 0
            }
        }
        
        return sum
    }

    func addDigitsOptimal(_ num: Int) -> Int {
           
        return num < 10 ? num : (num%9 == 0 ? 9 : num % 9)
           
    }
}