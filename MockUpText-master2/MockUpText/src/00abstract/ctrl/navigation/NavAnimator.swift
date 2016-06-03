import UIKit

class NavAnimator:NSObject, UIViewControllerAnimatedTransitioning{
    let duration = 1.0
    
    var operation: UINavigationControllerOperation = .Push
    
    func transitionDuration(context: UIViewControllerContextTransitioning?)->NSTimeInterval{
        return duration
    }
    
    func animateTransition(context:UIViewControllerContextTransitioning){
    }
}