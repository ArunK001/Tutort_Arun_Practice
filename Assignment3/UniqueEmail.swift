class Solution {
    func numUniqueEmails(_ emails: [String]) -> Int {
        var dict: [String: Int] = [:]
    
    for email in emails {
        var isUserNamePart = true, shouldIgnore = false
        var user = "", domain = ""
        for char in email {
            if String(char) == ".", isUserNamePart {
                //Do nothing
            }
            else if String(char) == "+", isUserNamePart{
                //Do nothing
                shouldIgnore = true
            }
            else if String(char) == "@" {
                isUserNamePart = false
            }
            else {
                if !isUserNamePart {
                    domain += String(char)
                }
                else if !shouldIgnore {
                    user += String(char)
                }
            }
        }
        
        let userEmail = user + "@" + domain
        dict[userEmail, default: 0] += 1
    }
    
    return dict.keys.count
    }
}