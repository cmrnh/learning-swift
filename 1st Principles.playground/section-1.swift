// Introduction to Swift:
// https://developer.apple.com/videos/wwdc/2014/?id=402

import Cocoa

/** creating an object with a non-default init **/
let futureDate = NSDate(timeIntervalSinceNow: 2.0)
if futureDate == NSDate() {
    println("futureDate is not in the future")
}

/** functions and default values **/
func sayHello(name: String = "Swift", date: NSDate = NSDate.date()) {
    println("Hello \(name), it's \(date.description)")
}

sayHello()
sayHello(date: NSDate(timeIntervalSinceNow:2.0))

/** let vs var **/
let constantStr = "Uncomment the line below to see what happens ;)"
// constantStr = "Changing a constant isn't allowed"

/** nil testing **/
var numberOfLegs = ["ant":6, "snake":0]
numberOfLegs["aardvark"] = 3
numberOfLegs["ant"] = nil // Removes ant from dictionary

let possibleLegCount: Int? = numberOfLegs["aardvark"]

// if possibleLegCount is not nil, assign its value to legCount
if let legCount = possibleLegCount {
    println("aardvark has \(legCount) legs")
}

/** tuples **/
func tupleTest() -> (code: Int, status:String) {
    return (1, "Hello")
}
let testResult = tupleTest();
println("The first value in the tuple is \(testResult.0); the code value in the tuple is \(testResult.code)")

/** completion blocks aka closures **/
func executeAfter(seconds: NSTimeInterval, completion: () -> ()) {
    let executeAfterDate = NSDate(timeIntervalSinceNow: seconds)
    var now = NSDate()
    // while executeAfterDate.compare(NSDate()) == NSComparisonResult.OrderedDescending {
    //     println("Waiting...")
    // }
    while executeAfterDate.timeIntervalSinceDate(now) > 0.0 {
        println("\(executeAfterDate.timeIntervalSinceDate(now)) seconds remaining")
        now = NSDate()
    }
    completion();
}

executeAfter(0.02) {
    println("Finished")
}

/** two key differences in struct vs class **/
// (1) when passing as a parameter:
// structs are copied (passed by value), but classes are passed by reference
//
// (2) only classes can inherit

/** optional values **/
var optionalNumber: Int?
if !optionalNumber {
    println("optionalNumber is nil");
}



