import UIKit

func computeReciprocal(heading: Double) -> Double {
    var retValue: Double = 0
    if heading >= 180 {
        retValue = heading - 180
    } else {
        retValue = heading + 180
    }
    return retValue
}

enum TurnTo: Double {
    case unknown = -1.0
    case left = 0.0
    case right = 1.1
    
    var textOfTurn: String {
        let retValue: String
        switch self {
        case .left:
            retValue = "left"
        case .right:
            retValue = "right"
        case .unknown:
            retValue = "Unknown"
        }
        return retValue
    }
}

func computeTurnDirection(heading: Double, newHeading: Double) -> TurnTo {
    var returnValue: TurnTo = .unknown
    var currentHeading = heading == 0 ? 360 : heading
    let reciprocal = computeReciprocal(heading: heading)
    print("Current: \(currentHeading), New: \(newHeading), Recip: \(reciprocal)")
    
    if reciprocal > 180 {
        if newHeading > reciprocal {
            returnValue = .left
        } else {
            returnValue = .right
        }
    } else {
        if newHeading <= currentHeading,
           newHeading > reciprocal {
            
            returnValue = .left
        } else {
            returnValue = .right
        }
    }
    return returnValue
}


//print("Heading: \(0) - Reciprocal: \(computeReciprocal(heading: 0))")
//print("Heading: \(45) - Reciprocal: \(computeReciprocal(heading: 45))")
//print("Heading: \(90) - Reciprocal: \(computeReciprocal(heading: 90))")
//print("Heading: \(135) - Reciprocal: \(computeReciprocal(heading: 135))")
//print("Heading: \(180) - Reciprocal: \(computeReciprocal(heading: 180))")
//print("Heading: \(225) - Reciprocal: \(computeReciprocal(heading: 225))")
//print("Heading: \(270) - Reciprocal: \(computeReciprocal(heading: 270))")
//print("Heading: \(315) - Reciprocal: \(computeReciprocal(heading: 315))")
//print("Heading: \(360) - Reciprocal: \(computeReciprocal(heading: 360))")

print("Direction: \(computeTurnDirection(heading: 0.0, newHeading: 270).textOfTurn)")
print("Direction: \(computeTurnDirection(heading: 10.0, newHeading: 270).textOfTurn)")
print("Direction: \(computeTurnDirection(heading: 10.0, newHeading: 90).textOfTurn)")
print("Direction: \(computeTurnDirection(heading: 110.0, newHeading: 90).textOfTurn)")
print("Direction: \(computeTurnDirection(heading: 355, newHeading: 340.0).textOfTurn)")
print("Direction: \(computeTurnDirection(heading: 355, newHeading: 10.0).textOfTurn)")
print("Direction: \(computeTurnDirection(heading: 23, newHeading: 192).textOfTurn)")
