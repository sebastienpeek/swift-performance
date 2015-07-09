import Foundation

public func createTestArray(amount:Double)->[String]{
    var data = [String]()
    
    for _ in stride(from: 0, through: amount, by: 1) {
        data.append(NSUUID().UUIDString)
    }
    
    return data
}