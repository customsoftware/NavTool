// The Swift Programming Language
// https://docs.swift.org/swift-book


import Foundation

public
enum TurnTo: Double {
    case unknown = -1.0
    case left = 0.0
    case right = 1.1
    
    public
    var textOfTurn: String {
        let retValue: String
        switch self {
        case .left:
            retValue = "Left"
        case .right:
            retValue = "Right"
        case .unknown:
            retValue = "Unknown"
        }
        return retValue
    }
}



public
class NavTool {
    public static let shared: NavTool = NavTool()
    
    public let appName: String = "NavTool"
    public let version: String = "0.1.1"
    
    // Geometry
    public func convertToRadians(degrees: Double) -> Double {
        return degrees * (.pi/180)
    }
    
    public func convertToDegrees(radians: Double) -> Double {
        return (radians * 180) / .pi
    }
    
    // Distance conversion
    public func standardMilesFrom(meters: Double) -> Double {
        return meters * 0.000621371
    }
    
    public func standardMilesFrom(kilometers: Double) -> Double {
        return kilometers * 1.60934
    }
    
    public func standardMilesFrom(nauticalMiles: Double) -> Double {
        return nauticalMiles * 1.15078
    }
    
    public func standardMilesFrom(feet: Double) -> Double {
        return feet / 5280
    }
    
    // knots
    public func nauticalMilesFrom(meters: Double) -> Double {
        return meters * 0.000539957
    }

    public func nauticalMilesFrom(standardMiles: Double) -> Double {
        return standardMiles * 0.868976
    }

    public func nauticalMilesFrom(feet: Double) -> Double {
        return feet / 6076.12
    }

    public func kilometersFrom(meters: Double) -> Double {
        return meters * 0.001
    }
    
    public func feetFrom(meters: Double) -> Double {
        return meters * 3.28084
    }
    
    public func metersFrom(kilometers: Double) -> Double {
        return kilometers * 1000
    }
    
    public func metersFrom(nauticalMiles: Double) -> Double {
        return nauticalMiles * 1852
    }
    
    public func metersFrom(miles: Double) -> Double {
        return miles * 1609.34
    }
    
    public func metersFrom(feet: Double) -> Double {
        return feet * 0.3048
    }
    
    // Temperature
    public func farenheitFrom(celsius: Double) -> Double {
        return (celsius * (9/5)) + 32
    }
    
    public func celsiusFrom(farenheit: Double) -> Double {
        return (farenheit - 32) * (5/9)
    }
    
    // Weight
    public func poundsFrom(kilograms: Double) -> Double {
        return kilograms * 2.20462
    }
    
    public func kilosFrom(pounds: Double) -> Double {
        return pounds * 0.453592
    }
    
    public func getDirectionOfTurn(from heading: Double, to newHeading: Double) -> TurnTo {
        var returnValue: TurnTo = .right
        
        if heading > 180,
           newHeading <= 180 {
            
            // Opposite sides of the rose
            if (heading - newHeading) <= 180 {
                returnValue = .left
            } else {
                returnValue = .right
            }
            
        } else if newHeading > 180,
                  heading <= 180 {
            
            // Opposite sides of the rose
            if (newHeading - heading) <= 180 {
                returnValue = .right
            } else {
                returnValue = .left
            }
        } else {
            // Same side of the rose
            if heading < newHeading {
                returnValue = .right
            } else {
                returnValue = .left
            }
        }
        return returnValue
    }
    
    public func getAmountOfTurn(from heading: Double, to newHeading: Double, directionOfTurn: TurnTo) -> Double {
        
        var difference: Double = 0
        
        if directionOfTurn == .left {
            difference = heading - newHeading
        } else {
            difference = newHeading - heading
        }
        if difference < 0 {
            difference += 360
        }
        
        if directionOfTurn == .right {
            difference = difference * -1
        }
        
        return difference
    }
}
