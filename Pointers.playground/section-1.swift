// Notes on pointers from 'Classes and Structures'

import UIKit

/** Enum Example: **/
enum CompassPoint {
    case North, South, East, West
}
var currentDirection = CompassPoint.West
let rememberedDirection = currentDirection
currentDirection = .East
if rememberedDirection == .West {   // evaluates to true
    println("The remembered direction is still .West")
}

/** Array Example: **/
var currentArray = [1,2,3]
let rememberedArray = currentArray

// If we just change the first entry...
currentArray[2] = 1
if rememberedArray[2] == 1 {
    println("rememberedArray does point to currentArray")
}

// If we change currentArray completely...
currentArray = [0, 1, 2]
if rememberedArray[0] == 1 {
    // This is tricky -- there's an implicit init() function when we reset currentArray completely...
    println("rememberedArray doesn't point to currentArray")
}

/** Instance (Object of Class) Example: **/
class VideoMode {
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

var videoMode = VideoMode()
var sameVideoMode = videoMode

sameVideoMode.frameRate = 10.0
println("The original videoMode's frameRate has been set to \(videoMode.frameRate)")









