import UIKit

class Content:UIView{

    @IBOutlet var view: UIView!

    @IBOutlet weak var text: UILabel!
    
    @IBOutlet weak var image: UIImageView!

    func setData(one:Timeline){
        self.text.numberOfLines = 0
        self.text.text = one.text
        self.text.sizeToFit()
        
        self.image.sizeToFit()
        
        //self.sizeToFit()
        self.view.bounds.size.height = text.bounds.size.height + image.bounds.size.height
        self.bounds.size.height = self.view.bounds.size.height
        
    }

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // xibファイル読み込み
        NSBundle.mainBundle().loadNibNamed("Content", owner: self, options: nil)
        
        
        // xibファイルのViewをカスタムViewクラスに追加する
        addSubview(view)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}