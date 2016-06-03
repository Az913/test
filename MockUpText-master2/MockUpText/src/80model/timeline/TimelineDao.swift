import UIKit

class TimelineDao : NSObject{
    func latest() -> Timelines{
        return TimelineAPI().latest()
    }
    
    func next(prevLastNo:String) -> Timelines{
        return TimelineAPI().next(prevLastNo)
    }
    
}