
/*
 Write a program to check if two provided strings are anagram of eachother.
 One string is an anagram of another if it uses the same characters in the same quantity. Only consider characters not spaces or punctuations. Consider capital letter to be same as a lower case.
 -------------- Examples:------------
 * anagrams("Dormitory", "Dirty room") -> True
 * anagrams("Hi! There", "Bye There") -> False
 few anagrams words:
 ["School master": "The classroom"
  "Conversation": "Voices rant on"
  "Listen": "Silent"
  "Astronomer": "Moon starer"]
 */


import Foundation

/*
 Method -1: will go with character maps
 hashmap of character to int(number of occurance)
 1. here we have to hashmap which will hold charactes and occurence also
 2. iterating each one of those and validating with other hashmap, if characters and occurence are same then its an anagram
 */
//MARK: - Method - 1
func anagram_1(stringA: String, stringB: String) -> Bool {
    let mapA = getCharMap(from: stringA.lowercased())
    let mapB = getCharMap(from: stringB.lowercased())
    for mapA_Element in mapA {
        if (mapA[mapA_Element.key] ?? -1) != (mapB[mapA_Element.key] ?? -2) {
            return false
        }
    }
    return true
}

/*
 Util function to get hashmap of characters and occurence
 */
func getCharMap(from string: String) -> [String: Int] {
    var map = [String: Int]()
    Array(string).forEach { (char) in
        let charStr = String(char)
        map[charStr] = (map[charStr] ?? 0) + 1
    }
    return map
}

//MARK: - Method - 2
/*
 simple and prefered one
 1. cast to lower case of both the string
 2. sort the characters then validate both are equal or ot
 ex. Listen sorted string will be --> "eilnst"
     Silent sorted string will be --> "eilnst", so both are same
 */
func anagram_2(stringA: String, stringB: String) -> Bool {
    return stringA.lowercased().sorted() == stringB.lowercased().sorted()
}

print("anagram of: ", anagram_1(stringA: "Listen", stringB: "Silent"))
print("anagram of: ", anagram_2(stringA: "Listen", stringB: "Silent"))
