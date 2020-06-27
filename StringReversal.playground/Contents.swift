// Write a program to reverse an string

import Foundation

//MARK: - Method - 1
func reverse_1(of str: String) -> String {
    var strList = Array(str)
    strList = strList.reversed()
    var reversedStr = ""
    strList.forEach { (char) in
        reversedStr+=String(char)
    }
    return reversedStr
}

//MARK: - Method - 2
func reverse_2(of str: String) -> String {
    var reversed = ""
    for char in Array(str) {
        reversed = String(char)+reversed
    }
    return reversed
}

//MARK: - Method - 3
func reverse_3(of str: String) -> String {
    let strList = Array(str)
    var reversed = ""
    for index in stride(from: strList.count, to: 0, by: -1) {
        reversed+=String(strList[index-1])
    }
    return reversed
}

//MARK: - Method - 4
func reverse_4(of str: String) -> String {
    return Array(str).reduce("", { result, char in
        return String(char) + String(result)
    })
}

print("reversing string method_1: ", reverse_1(of: "12345"))
print("reversing string method_2: ", reverse_2(of: "12345"))
print("reversing string method_3: ", reverse_3(of: "12345"))
print("reversing string method_3: ", reverse_4(of: "12345"))
