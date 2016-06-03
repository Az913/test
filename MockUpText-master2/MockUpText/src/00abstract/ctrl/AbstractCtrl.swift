

import UIKit

// 初期化等を行う基底クラス
class AbstractCtrl: UIViewController {

    
    // xibファイルの読み込み
    override func loadView() {
        let nn = xibName()
        
        //print(nn)
        
        let uiNib:UINib = UINib(nibName: nn, bundle: nil)
        let o : AnyObject? = uiNib.instantiateWithOwner(self, options: nil).first
        if let view = o as? UIView {
            self.view = view
            view.bounds = UIScreen.mainScreen().bounds
            view.center.x = self.view.center.x
            view.center.y = self.view.center.y
            
        }
    }
    
    // 画面データの読み込み
    override func viewDidLoad() {
        super.viewDidLoad()

        initCtrl()
    }
    
    // メモリワーニング
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //// Get ClassName for xib FileName. //////////
    
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
    
    // AppDelegate からの呼び出しメソッド
    func AppStart(ad:AppDelegate){
        let vc: UIViewController = self
        ad.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        ad.window?.rootViewController = vc
        ad.window?.makeKeyAndVisible()
    }

    // サブクラスで利用する初期化メソッド
    func initCtrl(){
        
    }
    
    
    
    
}