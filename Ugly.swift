class Solution {
    func isUgly(num: Int) -> Bool {
    
        if num==0{
            return false
        }
        
        if num==1{
            return true
        }
        
        var n = num
        
        while(n%2==0){
            n/=2
        }
        
        while(n%3==0){
            n/=3
        }
        
        while(n%5==0){
            n/=5
        }
        
        return n==1       
    }
}

class Solution {
    func isUgly(_ n: Int) -> Bool {
        var num = n
        
        while num > 1 {
            if num%2 == 0 {
                num /= 2
            }
            else if num%3 == 0 {
                num /= 3
            }
            else if num%5 == 0{
                num /= 5
            }
        }
        
        return num == 1
    }
}