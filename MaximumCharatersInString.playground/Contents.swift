// Write a program to find maximum characters found in a string


import Foundation


/*
 1. Split the given string in a array form
 2. Hashmap key will char and maps to int, value will holds the maximum times its occurs
 3. MaxOccurence its holds an integer which represents maximum times chars occurs
 4. MaxChar -> when we found char which is max occurs i.e., MaxOccurence then we'll assigning the char to MaxChar
 5. Returing MaxChar as a Result
 */

func findMaxChars_1(in string: String) -> String {
    var map = [String.Element: Int]()
    var maxChar = String()
    var maxOccurence = Int()
    let characters = Array(string)
    for char in characters {
        map[char] = map[char] != nil ? map[char]!+1 : 1
        if map[char]! > maxOccurence  {
            maxOccurence = map[char]!
            maxChar = String(char)
        }
    }
    return maxChar
}

/*
 1. Split the given string in a array form
 2. Hashmap key will char and maps to int, value will holds the maximum times its occurs
 3. MaxOccurence its holds an integer which represents maximum times chars occurs
 4. Get the Key by value, so basically here filetring an hasmap by MaxOccurence
 5. Returing filtered hashmap.key as a Result
 */

func findMaxChars_2(in string: String) -> String {
    var map = [String.Element: Int]()
    var maxOccurence = Int()
    let characters = Array(string)
    for char in characters {
        map[char] = map[char] != nil ? map[char]!+1 : 1
        if map[char]! > maxOccurence  {
            maxOccurence = map[char]!
        }
    }
  
    return String(map.first { (hashMap) -> Bool in
        return hashMap.value == maxOccurence
    }!.key)
}

print("maximum characters: ", findMaxChars_1(in: "Hello, playground"))
print("maximum characters: ", findMaxChars_2(in: "Helloooooo, playground"))

