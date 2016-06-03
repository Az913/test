

import UIKit

class Login: ZtemplateCtrl {
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func touchDown(sender: AnyObject, forEvent event: UIEvent) {
        
        print("Hello!!!!")
        
        nextScreen(TimelineHome())
    }
    @IBAction func touchDown2(sender: AnyObject) {
        
        //nextScreen(TimelineHome2())
        nextNavigatiion(TimelineHome2())
    }
    
    override func initCtrl(){
        setColor()
    }
  @IBAction func touchDownTest(sender: AnyObject) {

      nextScreen(TimelineNew())
  }
    
    func setColor(){
        
    }
    
    
}