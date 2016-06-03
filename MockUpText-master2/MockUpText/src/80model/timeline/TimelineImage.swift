import UIKit

//画像・動画
class TimelineImage{

    //画像・動画パス
    private var _imageName:String = ""
    //true:動画・false:画像
    private var _isVideo:Bool = false
    //画像
    private var _image:UIImage? = nil
    

    //画像としてインスタンス生成
    func createImage(imageName:String){
        _imageName = imageName
        _isVideo = false
        _image = UIImage(contentsOfFile: _imageName)
    }
    
    //動画としてインスタンス生成
    func createVideo(videoName:String){
        _imageName = imageName
        _isVideo = true
        _image = UIImage()
    }
    
    //画像・動画パス
    var imageName:String{
        get{
            return _imageName
        }
    }
    
    //動画・画像フラグ
    var IsVideo:Bool{
        get{
            return _isVideo
        }
    }
    
    //画像
    var Image:UIImage{
        get{
            if (_image == nil){
                return UIImage()
            }
            return _image!
        }
    }
}