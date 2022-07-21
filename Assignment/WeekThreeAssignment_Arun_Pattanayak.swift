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

        func getSumOfSquareOfDigits(_ num:Int) ->Int {
        	var sum = 0
        	var number = num
        	while (number > 0) {
        	    sum = sum + (number % 10) * (number % 10)
        	    number = number/10
        	}
        	return sum
    	}

        return true
    }
 

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

	func moveZeroes(_ nums: inout [Int]) {
        for index in (0..<nums.count).reversed() {
            if nums[index] == 0 {
                nums.remove(at: index)
                nums.append(0)
            }
        }
    }

	func reverseVowels(_ s: String) -> String {
        let vowelsArr = ["a", "e", "i", "o", "u"]
        var charArr = s.map({String($0)})
        
        
        for (i, char) in charArr.enumerated() where vowelsArr.contains("\(char)".lowercased()) {
            print("Char \(char)")
            for j in (i..<charArr.count).reversed().enumerated() where vowelsArr.contains("\(charArr[j.element])".lowercased()) {
                print("Vowel \(charArr[j.element])")
                
                print(i, j)
                
                charArr.insert(charArr[j.element], at: i)
                charArr.remove(at: i+1)
                
                print("CharArr \(charArr)")
                
                charArr.remove(at: j.element)
                
                print("CharArr \(charArr)")
                
                charArr.insert(char, at: j.element)
                
                print("CharArr \(charArr)")
                
                break
            }
        }
        
        return charArr.joined()
    }

	func thirdMax(_ nums: [Int]) -> Int {
        var maxVals: (first: Int, sec: Int, third: Int) = (Int.min, Int.min, Int.min)
        
        guard !nums.isEmpty else { return 0 }
        guard nums.count > 1 else { return nums.first! }
        
        for num in nums {
            if maxVals.first < num {
                maxVals.first = num
            }
        }
        
        for num in nums {
            if maxVals.sec < num, maxVals.first > num {
                maxVals.sec = num
            }
        }
        
       var exist = false
        for num in nums {
            if maxVals.third < num, maxVals.sec > num {
                exist = true
                maxVals.third = num
            }
        }

        return exist ? maxVals.third : maxVals.first
    }

	func findTheDifference(_ s: String, _ t: String) -> Character {
        var sDict = [String : Int]()
        var tDict = [String : Int]()
        var diff: Character = Character(" ")
        
        for char in s {
            sDict["\(char)", default: 0] += 1
        }
        
        for char in t {
            tDict["\(char)", default: 0]  += 1
        }
        
        for (key, _) in tDict {
            if sDict[key] != tDict[key] {
                diff = Character(key)
            }
        }
        
        return diff
    }

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


 func getLucky(_ s: String, _ k: Int) -> Int {
        var numString = ""
        var result = 0
        
        s.forEach{
            numString += String($0.asciiValue!-96)
        }
        
        for _ in 1...k {
            result = 0
            numString.forEach{
                result += Int(String($0))!
            }
            numString = String(result)
        }
        
        
        return result
   }
}
