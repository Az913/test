

import UIKit

class MoveScreenCtrl: AbstractCtrl{
    
    func nextScreen(next:UIViewController){
        self.presentViewController(next, animated: true, completion: nil)
    }
    
    func backScreen(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func nextNavigatiion(next:UIViewController){
        let nvc = UINavigationController(rootViewController:next)
        self.presentViewController(nvc, animated: true, completion: nil)
    }

}
