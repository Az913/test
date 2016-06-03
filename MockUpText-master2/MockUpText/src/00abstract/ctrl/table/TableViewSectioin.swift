import UIKit

// TableCell 用データアダプタ
class TableViewSection:NSObject{
    
    //////// 内部プロパティ定義 ////////
    //ヘッダーテキスト
    var _headerText:String = ""
    //フッターテキスト
    var _footerText:String = ""
    //ヘッダー高さ
    var _headerHight:CGFloat = CGFloat(0)
    //フッター高さ
    var _footerHight:CGFloat = CGFloat(0)
    
    //データリスト
    var cells = [NSObject]()
    
    //ヘッダテキスト参照
    var HeaderText:String{
        get{
            return _headerText
        }
    }
    
    //フッタテキスト参照
    var FooterText:String{
        get{
            return _footerText
        }
    }
    
    //ヘッダ高さ参照
    var HeaderHight:CGFloat{
        get{
            return _headerHight
        }
    }
    
    //フッタ高さ参照
    var FooterHight:CGFloat{
        get{
            return _footerHight
        }
    }
    
    //リスト件数
    var Count:Int{
        get{
            return cells.count
        }
    }
    
    //データリスト設定
    func SetList(list:[NSObject]){
        self.cells = list
    }
    
    //ヘッダー設定
    func SetHaader(text:String, hight:CGFloat){
        self._headerText = text
        self._headerHight = hight
    }
    
    //フッタ設定
    func SetFooter(text:String, hight:CGFloat){
        self._footerText = text
        self._footerHight = hight
    }
    
    //データリスト全件取得
    var List:[NSObject]{
        get{
            return cells
        }
    }
    
    //データリスト取得インデックス取得
    func item(index:Int) -> NSObject?{
        if (Count <= index){
            return nil
        }
        return cells[index]
    }
    
    //データリスト削除インデックス指定
    func removeIndex(index:Int){
        if (Count <= index){
            return
        }
        
        cells.removeAtIndex(index)
    }

    /*
    func removeItem(item:T){
        for (index, one) in cells.enumerate(){
            if (one == item){
                cells.removeAtIndex(index)
            }
        }
        
    }
     */

}