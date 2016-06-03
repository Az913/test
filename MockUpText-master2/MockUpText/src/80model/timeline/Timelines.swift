import UIKit

class Timelines:NSObject{

    //投稿記事
    private var list = [Timeline]()
    
    //件数
    var count:Int{
        get{
            return list.count
        }
    }
    
    func addTimeline(one:Timeline){
        
        list.append(one)
    }


    //全件取得
    func all()->[Timeline]{
        return list
    }
    
    //コンテンツNoを指定して取得
    func get(contentNo:String)->Timeline?{
        for one in list{
            if (one.contentNo == contentNo){
                return one
            }
        }
        
        return nil
    }
    
    //先頭を取得
    func first()->Timeline?{
        return list.first
    }
    
    //最後を取得
    func last()->Timeline?{
        return list.last
    }
    
}