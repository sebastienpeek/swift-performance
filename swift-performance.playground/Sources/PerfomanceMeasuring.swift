import Foundation
import XCPlayground

public typealias MeasuredBlock = ()->Void

public func measureBlock(name:String, iterations:Int = 1, forBlock block:MeasuredBlock)->Dictionary<String,AnyObject> {
    precondition(iterations > 0, "Iterations must be greater than 0")
    
    var total:Double = 0.0
    
    for _ in stride(from: 1, through: iterations, by: 1) {
        let start = NSDate.timeIntervalSinceReferenceDate()
        block()
        let took = Double(NSDate.timeIntervalSinceReferenceDate() - start)
        total += took
    }
    
    let time = total / Double(iterations)
    let results = ["Name":name, "Time Taken":time]
    return results as! Dictionary<String, AnyObject>
}