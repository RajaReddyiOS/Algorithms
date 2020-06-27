// Write a program to reverse an string

import Foundation

func reverse(of str: String) -> String {
    var strList = Array(str)
    strList = strList.reversed()
    var reversedStr = ""
    strList.forEach { (char) in
        reversedStr+=String(char)
    }
    return reversedStr
}

print("reversing string: ", reverse(of: "sos"))
