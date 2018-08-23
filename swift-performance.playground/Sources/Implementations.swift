import Foundation

public func quickSort<T: Comparable>(_ list: [T]) -> [T] {
    if list.count <= 1 {
        return list
    }
    
    let pivot = list[0]
    
    var smallerList: [T] = []
    var equalList: [T] = []
    var biggerList: [T] = []
    
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
    
    return quickSort(smallerList) + equalList + quickSort(biggerList)
}

public func swiftSort(_ list: [String]) -> [String] {
    var mutableList = list
    mutableList.sort(by: <)
    return mutableList
}
