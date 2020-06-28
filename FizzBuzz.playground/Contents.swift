//Write a program for FizzBuzz
//Write a program that prints the numbers from 1 to 100
//For numbers divisible by 3, print “Fizz”
//For numbers divisible by 5, print “Buzz”
//For numbers divisible by both 3 and 5, print “FizzBuzz”

import Foundation

//MARK: - Method - 1
func fizzBuzz_1(_ number: Int) {
    for index: Int in 1...number {
        if index % 3 == 0 && index % 5 == 0 {
            print("FizzBuzz")
        }else if index % 3 == 0 {
            print("Fizz")
        }else if index % 5 == 0 {
            print("Buzz")
        }else {
            print(index)
        }
    }
}


//MARK: - Method - 2
func fizzBuzz_2(_ number: Int) {
    for index: Int in 1...number {
        switch (index % 3 == 0, index % 5 == 0) {
        case (true, true):
            print("FizzBuzz")
        case (true, false):
            print("Fizz")
        case (false, true):
            print("Buzz")
        default:
            print(index)
        }
    }
}

fizzBuzz_1(100)
fizzBuzz_2(100)
