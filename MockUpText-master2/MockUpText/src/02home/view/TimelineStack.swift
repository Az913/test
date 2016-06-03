
import UIKit

class TimelineStack : UIView{

    @IBOutlet var view: UIView!
    @IBOutlet weak var stack: UIStackView!


    var before:Content? = nil
    
    func newData(timelines:Timelines){
        
        //stack.bounds.size.height = CGFloat(timelines.count * 200)

        let stackSize: NSLayoutConstraint = NSLayoutConstraint(
            item: stack,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 200.0 * CGFloat(timelines.count))
        
        stack.addConstraint(stackSize)

        
        for(one) in timelines.all(){
            
            let _view = Content()
            _view.setData(one)
            /*
            _view.bounds.size.width = self.bounds.width
            _view.view.bounds.size.width = self.bounds.width

            stack.bounds.size.height += _view.bounds.size.height*2
            */
            let contentSize: NSLayoutConstraint = NSLayoutConstraint(
                item: _view.view,
                attribute: NSLayoutAttribute.Height,
                relatedBy: NSLayoutRelation.Equal,
                toItem: nil,
                attribute: NSLayoutAttribute.NotAnAttribute,
                multiplier: 1.0,
                constant: 200.0)


            /*
            if (biefore != nil){
                let layout: NSLayoutConstraint =NSLayoutConstraint(
                    item : _view,
                    attribute : NSLayoutAttribute.Height,
                    relatedBy: NSLayoutRelation.Equal,
                    toItem: nil,
                    attribute: NSLayoutAttribute.NotAnAttribute,
                    multiplier: 1.0,
                    constant: 0.0)
                )
            } else {
                let layout: NSLayoutConstraint =NSLayoutConstraint(
                    item : _view,
                    attribute : NSLayoutAttribute.Height,
                    relatedBy: NSLayoutRelation.Equal,
                    toItem: nil,
                    attribute: NSLayoutAttribute.NotAnAttribute,
                    multiplier: 1.0,
                    constant: 0.0)
                )
                
            }
            */
            stack.addArrangedSubview(_view.view)
            stack.addConstraint(contentSize)
            //stack.bounds.size.height += 200
            before = _view
        }
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // xibファイル読み込み
        NSBundle.mainBundle().loadNibNamed("TimelineStack", owner: self, options: nil)
        
        
        // xibファイルのViewをカスタムViewクラスに追加する
        addSubview(view)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
