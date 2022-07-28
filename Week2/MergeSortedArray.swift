class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        if n == 0 {
            return
        }
        
        if m == 0 {
            nums1 = nums2
            return
        }
        
        var index1 = m - 1
        var index2 = n - 1
        var index = m + n - 1
        
        while index >= 0 && index2 >= 0 {
            if index1 < 0 {
                nums1[index] = nums2[index2]
                index2 -= 1
                index -= 1
                continue
            } 
            
            if nums1[index1] >= nums2[index2] {
                nums1[index] = nums1[index1]
                index1 -= 1
                
            } else {
                nums1[index] = nums2[index2]
                index2 -= 1
            }
            
            index -= 1
        }
        
        
    }
}