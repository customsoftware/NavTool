// The Swift Programming Language
// https://docs.swift.org/swift-book


import Foundation

public
class NavTool {
    public static let shared: NavTool = NavTool()
    
    public let appName: String = "NavTool"
    public let version: String = "0.1"
    
    
    public func convertToRadians(_ degrees: Double) -> Double {
        return degrees * (Double.pi/180)
    }
    
    public func convertToDegrees(_ radians: Double) -> Double {
        return radians * 180 / Double.pi
    }
}
