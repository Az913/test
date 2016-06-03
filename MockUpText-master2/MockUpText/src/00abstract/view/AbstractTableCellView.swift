
import UIKit

class AbstractTableCellView: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!)
    {
        //First Call Super
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // xibファイル読み込み
        let nn = xibName()
        
        //print(nn)
        
        let uiNib:UINib = UINib(nibName: nn, bundle: nil)
        let o : AnyObject? = uiNib.instantiateWithOwner(self, options: nil).first
        if let view = o as? UIView {
            // xibファイルのViewをカスタムViewクラスに追加する
            addSubview(view)
        }
        
    }
    
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)!
    }
    
    // 自クラス名取得メソッド
    private func className() ->String{
        let type = Mirror(reflecting: self).subjectType
        return  String(type)
    }
    
    // xibファイル名取得メソッド
    func xibName()->String{
        let cn = className()
        return cn
    }
    
    
}
