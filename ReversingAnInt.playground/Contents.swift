import Foundation
/*
 1. Making int as unsignInteger
 2. converting to string
 3. Using of the method to reverse String
 4. Using number.signum() we can detect its has negative sign or not, signum() will returns 1 for positive values and -1 for negative values
 5. So Finally we will multiply with signum() and return result
 */

func reverse(_ number: Int) -> Int {
    return Int(Array(String(abs(number))).reduce("", { result, char in
        return String(char)+String(result)
    }))!*number.signum()
}
print("reverse an int: ", reverse(-40))

