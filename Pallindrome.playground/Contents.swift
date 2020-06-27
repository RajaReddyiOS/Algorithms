//Write a Program to Check Whether a Number is Palindrome or Not

//An String is a palindrome if the reverse of that String is equal to the original String.


import Foundation

//MARK: - Method - 1
func isPallindrome_1(of str: String) -> Bool {
    return Array(str).reduce("", { result, char in
                return String(char) + String(result)
            }) == str
}

//MARK: - Method - 2 preferred one
func isPallindrome_2(of str: String) -> Bool {
    let list = Array(str)
    for index: Int in 0..<list.count {
        if list[index] != list[(list.count-1)-index] {
            return false
        }
    }
    return true
}


print("isPallindrome_1: ", isPallindrome_1(of: "abcba"))
print("isPallindrome_2: ", isPallindrome_2(of: "abcba"))

