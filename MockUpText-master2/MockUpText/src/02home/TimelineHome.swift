

import UIKit

class TimelineHome: ZtemplateCtrl {
    override func initCtrl(){
        setColor()
        
        timeLabel.text = "今ですよ!"
        self.view.bringSubviewToFront(timeLabel)
    }
    
    @IBOutlet weak var scrollview: UIScrollView!
    
    func setColor(){
        
    }
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func action_NewTimeline(sender: UIButton, forEvent event: UIEvent) {
        
        print("新規")

        let newTimelines = TimelineDao().latest()
        let timelineStack = TimelineStack()
        timelineStack.newData(newTimelines)
        
        scrollview.contentSize.height = timelineStack.view.bounds.size.height
        scrollview.addSubview(timelineStack)
 
    }
}
