import UIKit
import Darwin

struct Point{
    var x: Double
    var y: Double
}

struct line {
    var start: Point
    var end: Point
    func length() -> Double{
        return sqrt(pow(end.x-start.x, 2) + pow(end.y-start.y, 2))
    }
}
struct Traingle {
    var points:[Point]
    func area() -> Double{
        //Hopefully this is the correct formula.
        //A = (1/2) |x1 1 (y2 2 − y3 3 ) + x2 2 (y3 3 − y1 1 ) + x3 3 (y1 1 − y2 2 )|
        return 0.5 * abs((points[0].x * (points[1].y-points[2].y))+(points[1].x * (points[2].y-points[0].y)) + (points[2].x * (points[0].y-points[1].y)))
    }
}

let p1 = Point(x: 2, y: 2)
let p2 = Point(x: 0, y: 1)
let p3 = Point(x: 3, y: 4)

let newLine = line(start: p1, end: p2)
print(newLine.length())

let newT = Traingle(points: [p1, p2, p3])
print(newT.area())
