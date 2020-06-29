/*

 Write a function that accepts a String. That function should capitalize the first letter or character of each word in a string then return the capitalize string
 -----------Example------------
 capitalize("a short sentence") -> A Short Sentence
 capitalize("a lazy fox") -> A Lazy Fox
 */

import Foundation

func capitalize_1(of string: String) -> String {
    var words = string.components(separatedBy: " ")
    for index: Int in 0..<words.count {
        var word = words[index]
        let wordList = Array(word)
        word = ""
        for wordIndex:Int in 0..<wordList.count {
            if wordIndex == 0 {
                word+=String(wordList[wordIndex]).uppercased()
            }else {
                word+=String(wordList[wordIndex])
            }
        }
        words[index] = word
    }
    return words.joined(separator: " ")
}


/*
 Always prefered, swift extension
 */
func capitalize_2(of string: String) -> String {
    return string.capitalized
}

print("capitalize: ", capitalize_1(of: "a short sentence"))
print("capitalize: ", capitalize_2(of: "a short sentence"))

