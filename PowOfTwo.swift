class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        var num = n
        
        if num == 0 {
            return false
        }
         
        while num != 1 {
            if num % 2 != 0 {
                return false;   
            }
            num = num / 2;
        }
        return true;
    }
}

////return n > 0 && (n & -n) == n