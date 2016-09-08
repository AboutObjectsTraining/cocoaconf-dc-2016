import Foundation

extension String
{
    func sum() -> Int?
    {
        var sum = 0
        let groups = Array((self.characters.split { $0 == "," }.map { String($0) }).reverse())
        
        for i in 0..<groups.count {
            if let intVal = Int(groups[i]) {
                let power = pow(10.0, Double(i * 3))
                sum += (intVal * Int(power))
            }
            else { return nil }
        }
        
        return sum
    }
}

