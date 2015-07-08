/*:
### Introduction

This playground is to demonstrate how to use some standard methods to test the performance of algorithms in a playground.

The algorithms and test data should be in separate source files to ensure they run more closely to production performance. 
We don't want your playground crashing now, do we?!

### Test Data
Build up your test data elsewhere, or hey, just put it in here if you want to slow down the Playground.
*/
// I'll create some test data at some point, to show this off better. For now, just add PerformanceMeasure.swift to your Playground Sources folder.
/*:
### Perfomance Testing

Just like we could with XCTestFramework, we can now use the public "measureBlock" to record how long each function takes over a given amount of iterations. This allows us to then see the standard deviation in the results if comparing two implementations or optimisations.

For now, just add some code in the block below to test it out. Why not write a few blocks of code below, and compare them?

*/
let baseCodeTest = measureBlock("Performance Testing", iterations: 30) { () -> Void in
    
}

let optimisedCodeTest = measureBlock("Optimised Code Testing", iterations: 30) { () -> Void in
    
}
