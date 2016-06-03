
import UIKit

class PerformUtils{
    
    static func PerformeMethod(prefix:String, closure:(()->Void)?){
        let t1 = NSDate()
        closure?()
        let t2 = NSDate()
        
        print("[" + prefix + " time]:" + String(t2.timeIntervalSince1970-t1.timeIntervalSince1970))
    }
    
    static func SizeLog(name:String, size:CGSize){
        print("[" + name + "]height:" + String(size.height))
        print("[" + name + "]width:" + String(size.height))
    }

    
}