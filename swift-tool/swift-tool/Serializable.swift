import Foundation

// Ideally, this would be a protocol rather than a class.
// In Swift 2, we can implement the behavior in a protocol extension. That way,
// a class can opt in for the behavior by simply adopting the protocol.

public class Serializable
{
//    public func dictionaryRepresentation() -> [String: AnyObject]
//    {
//        var dict = [String: AnyObject]()
//        let mirror = Mirror(reflecting: self)
//        
//        for child in mirror.children
//        {
//            print(child)
//        }
//        
//        for i in 1..<mirror.children.count
//        {
//            let (key, childMirror) = mirror[i]
//            
//            if let unwrappedVal: AnyObject = self.unwrap(childMirror.value) as? AnyObject
//            {
//                var value: AnyObject = unwrappedVal
//                
//                if let object = value as? Serializable
//                {
//                    value = object.dictionaryRepresentation()
//                }
//                else if let objects = value as? [Serializable]
//                {
//                    var dicts = [[String: AnyObject]]()
//                    for item in objects {
//                        dicts.append(item.dictionaryRepresentation())
//                    }
//                    value = dicts
//                }
//                
//                dict[key] = value
//            }
//        }
//        
//        return dict
//    }
//    
    public func value(key: String) -> Any?
    {
        let mirror = Mirror(reflecting: self)
        
        for child in mirror.children
        {
            if (child.label == key) {
                return child.value
            }
        }
        
        return .None
    }

    
//    private func unwrap(value: Any) -> Any?
//    {
//        let mirror = Mirror(reflecting: self)
//        
//        if mirror.children.count == 0 {
//            return nil
//        }
//        
//        return  mirror.subjectType != .Optional ? value : mirror[0].1.value
//    }
}