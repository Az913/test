import UIKit

class TimelineAPI:NSObject{

    //先頭の１０件
    func latest() -> Timelines{
        //let temp = jToCForTimeline("")
        let temp = DummyTimelines()
        
        let result = Timelines()
        
        for (index, one) in temp.all().enumerate(){
            if (index < 10){
                let temp:Timeline = Timeline()
                temp.setData(one.text)
                
                for (image) in one.allImages(){
                    temp.addImage(image.imageName)
                }
                
                result.addTimeline(temp)
            } else {
                break;
            }
        }
        return result
    }
    
    //次の１０件
    func next(prevLastNo:String) -> Timelines{
        //let temp = jToCForTimeline("")
        let temp = DummyTimelines()
        
        let result = Timelines()
        
        var before = Timeline()
        var isSkip = true

        for one in temp.all(){
            if (before.contentNo == prevLastNo){
                isSkip = false
            }
            if (!isSkip){
                result.addTimeline(one)
            }
            
            before = one
        }
        return result
    }
    
    //日付で検索→後で
    func findByDate(){
        
    }
    
    //タイムラインNOで検索→後で
    func findByContentsNo(){
        
    }
    
    //新規登録→後で
    func new(){
        
    }
    
    //削除→後で
    func remove(){
        
    }
    
    //記事修正→後で
    func override(){
        
    }
    
    //JSONをClass（Timelines）に変換する
    func jToCForTimeline(json:String)->Timelines{
        return Timelines()
    }
    
    func DummyTimelines() -> Timelines{
        let result = Timelines()
        
        let closure = {(text:String, imageName:String)->(Void) in
                let one = Timeline()
                one.setData(text)
                one.addImage(imageName)
                result.addTimeline(one)
            }

        var i=0
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "2footcat_180.jpg")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "2footcat_180.jpg")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        i=i+1;closure(String(i) + "つ目の本文", "neko")
        
        return result
    }
}