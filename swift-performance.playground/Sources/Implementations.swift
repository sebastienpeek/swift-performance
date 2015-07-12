import Foundation

public func quicksort<T: Comparable>(var list: [T]) -> [T] {
    if list.count <= 1 {
        return list
    }
    
    let pivot = list[0]
    
    var smallerList = [T]()
    var equalList = [T]()
    var biggerList = [T]()
    
    for x in list {
        switch x {
        case let x where x < pivot:
            smallerList.append(x)
        case let x where x == pivot:
            equalList.append(x)
        case let x where x > pivot:
            biggerList.append(x)
        default:
            break
        }
    }
    
    return quicksort(smallerList) + equalList + quicksort(biggerList)
}

public func swiftSort(testData:[String])->[String] {
    return testData.sort({$0 < $1})
}