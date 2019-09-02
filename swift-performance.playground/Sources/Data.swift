import Foundation

public func createTestArray(count: Int) -> [String] {
    var data: [String] = []
    
    for _ in 0..<count {
        data.append(UUID().uuidString)
    }
    
    return data
}
