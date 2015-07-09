import Foundation

public func quickSort(testData:[String])->[String] {

    var less = [String]()
    var equal = [String]()
    var greater = [String]()
    
    if (testData.count <= 1) {
        return testData
    }
    
    let pivot:String = testData[testData.count/2]
    
    for x in testData {
        if x < pivot {
            less.append(x)
        }
        
        if x == pivot {
            equal.append(x)
        }
        
        if x > pivot {
            greater.append(x)
        }
    }
    
    var sorted = [String]()
    let sortedLess = quickSort(less)
    let sortedEqual = quickSort(equal)
    let sortedGreater = quickSort(greater)
    
    sorted.extend(sortedLess)
    sorted.extend(sortedEqual)
    sorted.extend(sortedGreater)
    
    return sorted
}

public func swiftSort(testData:[String])->[String] {
    return testData.sort({$0 < $1})
}

extension Array {
    var decompose : (head: T, tail: [T])? {
        return (count > 0) ? (self[0], Array(self[1..<count])) : nil
    }
}