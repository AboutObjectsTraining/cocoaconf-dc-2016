import XCTest

class GeometryTests: XCTestCase
{
    func testPoint1()
    {
        let p = Point1(x: 10.0, y: 20.0) // synthesized member-wise initializer.
        print("x is \(p.x), y is \(p.y)")
    }
    
    func testPoint2()
    {
        let p = Point2(x: 10.0, y: 20.0, pointsPerPixel: 1.0)
        print("x is \(p.x), y is \(p.y), pointsPerPixel is \(p.pointsPerPixel)")
    }
    
    func testPoint3()
    {
        let p = Point3()
        print("x is \(p.x), y is \(p.y), pointsPerPixel is \(p.pointsPerPixel)")

        let p2 = Point3(x: 10.0, y: 20.0)
        print("x is \(p2.x), y is \(p2.y), pointsPerPixel is \(p2.pointsPerPixel)")
    }
    
    func testPoint4()
    {
        let p = Point4(x: 10.0, y: 20.0)
        print("x is \(p.x), y is \(p.y), pointsPerPixel is \(p.pointsPerPixel)")
        
        let p2 = Point4(x: 10.0, y: 20.0, pointsPerPixel: 2.0)
        print("x is \(p2.x), y is \(p2.y), pointsPerPixel is \(p2.pointsPerPixel)")
    }
}