/*
 Given an Array and chunk size, divide the array into many subarrays
 where each sub array is of length size
 Examples
 ---------------
 chunk([1,2,3,4,5], 2) --> [[1,2], [3,4], [5]]
 chunk([1,2,3,4], 2) --> [[1,2], [3,4]]
 chunk([1,2,3,4], 10) --> [[1,2,3,4]]
 */


import Foundation

/*
 1. Declaring an emplty chunked list, to push elements in to this
 2. SliceList is for carrying sub array and used to push in chunked list
 3. Iterating an given array then push element in SliceList according to give size
 4. if SliceList is filled based on given size then push SliceList to chunked, and continue array iteration
 5. return chunked
 */
func chunk_1(_ array: [Any], size: Int) -> [[Any]] {
    var chunked = [[Any]]()
    var sliceList = [Any]()
    for element in array {
        if sliceList.count >= size {
            chunked.append(sliceList)
            sliceList = [Any]()
        }
        sliceList.append(element)
    }
    if sliceList.count != 0 {
        chunked.append(sliceList)
    }
    return chunked
}

/*
1. Declaring an emplty chunked list, to push elements in to this
2. index will use for iteration
3. slicing an array in while array[0..<2] returns an subArray of two elements
4. Push SliceList to chunked, and continue while loop
5. return chunked
*/
func chunk_2(_ array: [Any], size: Int) -> [[Any]] {
    var chunked = [[Any]]()
    var index = 0
    while index < array.count {
        let lastIndex = (index+size) > array.count ? array.count : (index+size)
        chunked.append(Array(array[index..<lastIndex]))
        index+=size
    }
    return chunked
}

print("chunked list: ", chunk_1([1,2,3,4,5,6,7,8,9], size: 2))
print("chunked list: ", chunk_2([1,2,3,4,5,6,7,8,9], size: 2))

