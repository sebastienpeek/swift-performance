import Foundation

public typealias MeasuredBlock = () -> Void

public func measureBlock(_ name: String, iterations: Int = 1, forBlock block: MeasuredBlock) -> [String: Any] {
    precondition(iterations > 0, "Iterations must be greater than 0, but we default to 1 for you...")
    precondition(!name.isEmpty, "A name must be set. If you want to see results.")
    
    var totalTime: Double = 0.0
    var results: [Double] = []
    
    for _ in 0..<iterations {
        let startTime = Date.timeIntervalSinceReferenceDate
        block()
        let result = Date.timeIntervalSinceReferenceDate - startTime
        results.append(result)
        totalTime += result
    }
    
    let mean = totalTime / Double(iterations)
    
    var deviation = 0.0
    
    for result in results {
        let difference = result - mean
        deviation += difference * difference
    }
    
    let variance = deviation / Double(iterations)
    
    let average = mean.milliseconds()
    let stdDeviation = variance.milliseconds()
    let time = totalTime / Double(iterations)
    
    return ["Name": name,
            "Time Taken": time,
            "Average": average,
            "Std Deviation": stdDeviation]
}

extension Double {
    
    func milliseconds() -> String {
        return String(format: "%.4lf ms", (self * 1000.0))
    }
}
