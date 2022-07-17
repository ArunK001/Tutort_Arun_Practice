class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
		var dictS: [Character: Int] = [:]
		s.forEach { (c) in
			dictS[c, default: 0] += 1
		}
		
		var dictT: [Character: Int] = [:]
		t.forEach { (c) in
			dictT[c, default: 0] += 1
		}
		
		return dictS == dictT
	}
}