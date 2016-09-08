
struct Path
{
    
}


struct Point1
{
    var x: Double
    var y: Double
}

struct Point2
{
    var x: Double
    var y: Double
    
    let pointsPerPixel: Double
}

struct Point3
{
    var x = 0.0 // default property value
    var y = 0.0
    
    let pointsPerPixel = 2.0
    
//    init(x: Double, y: Double)
//    {
//        self.x = x
//        self.y = y
//    }
}

struct Point4
{
    var x = 0.0
    var y = 0.0
    
    let pointsPerPixel: Double
    
    // convenience initializer
//    init(x: Double, y: Double) {
//        self.init(x: x, y: y, pointsPerPixel: 2.0)
//    }
    
    // default value for pointsPerPixel provided in parameter list
    init(x: Double, y: Double, pointsPerPixel: Double = 2.0)
    //
//    init(x: Double, y: Double, pointsPerPixel: Double)
    {
        self.x = x
        self.y = y
        self.pointsPerPixel = pointsPerPixel
    }
}
