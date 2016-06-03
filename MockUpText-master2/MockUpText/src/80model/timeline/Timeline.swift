import UIKit

//タイムライン１件
class Timeline:NSObject{

    //本文
    private var _text:String = ""
    //タイムラインNo（論理番号）
    private var _no:String = ""
    //画像・動画コレクション
    private var imageNames = [TimelineImage]()
    
    

    //本文
    var text:String{
        get{
            return _text
        }
    }
    
    //タイムラインNO
    var contentNo:String{
        get{
            return _no
        }
    }
    
    //記事データ設定
    func setData(text:String){
        self._text = text
        
        let tempNo:String = String(NSDate().timeIntervalSince1970)
        self._no = tempNo
    }
    
    //全ての画像・動画
    func allImages() -> [TimelineImage]{
        return imageNames
    }
    
    //画像追加
    func addImage(imageName:String){
        let temp = TimelineImage()
        temp.createImage(imageName)
        
        imageNames.append(temp)
        
    }
    
    //動画追加
    func addVideo(imageName:String){
        let temp = TimelineImage()
        temp.createVideo(imageName)
        
        imageNames.append(temp)
    }
    
    //画像・動画削除（インデクス指定）
    func removeImage(index:Int) -> Int{
        if (imageCount() <= index){
            return 0
        }
        imageNames.removeAtIndex(index)
        return 1
    }
    
    //画像・動画削除（ファイルパス指定）
    func removeImageByName(imageName:String) -> Int{
        var target = [Int]()
        for (index, one) in imageNames.enumerate(){
            if (one.imageName == imageName){
                target.append(index)
            }
        }
        
        for i in target.reverse() {
            imageNames.removeAtIndex(i)
        }
        
        return target.count
    }
    
    //画像・動画全件削除
    func removeAllImage(){
        imageNames.removeAll()
    }
    
    //画像・動画件数
    func imageCount()->Int{
        return imageNames.count
    }
    
    
    
    
    
    
}