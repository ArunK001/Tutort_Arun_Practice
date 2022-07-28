class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
       	var writePointer = nums1.count - 1
		var firstPointer = m - 1
		var secondPointer =  n - 1

		while writePointer >= 0 && firstPointer >= 0 && secondPointer >= 0 {
			let firstNumber = nums1[firstPointer]
			let secondNumber = nums2[secondPointer]

			if firstNumber > secondNumber {
				nums1[writePointer] = firstNumber
				writePointer -= 1
				firstPointer -= 1
			} else if firstNumber < secondNumber {
				nums1[writePointer] = secondNumber
				writePointer -= 1
				secondPointer -= 1
			} else {
				nums1[writePointer] = firstNumber
				writePointer -= 1
				nums1[writePointer] = secondNumber
				writePointer -= 1
				firstPointer -= 1
				secondPointer -= 1
			}
		}

		while firstPointer >= 0 {
			nums1[writePointer] = nums1[firstPointer]
			firstPointer -= 1
			writePointer -= 1
		}
		while secondPointer >= 0 {
			nums1[writePointer] = nums2[secondPointer]
			secondPointer -= 1
			writePointer -= 1
		}
    }
}