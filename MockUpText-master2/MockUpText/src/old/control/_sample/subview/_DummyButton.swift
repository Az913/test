import UIKit

class _DummyButton : SMButton{
    override func initView(){
        name = "DummyButton"
        
//        addAllTouchEvents(#selector(AllTouchEvents))
//        addTouchDownEvents(#selector(TouchDown))
//        addTouchUpInsideEvents(#selector(TouchUpInside))
//        addTouchUpOutsideEvents(#selector(TouchUpOutside))
/*
        let model = DummyButtonModel()
        self.addAllTouchEvents(model, selector:#selector(DummyButtonModel.AllTouchEvents(_:)))
        self.addTouchDownEvents(model, selector:#selector(DummyButtonModel.TouchDown(_:)))
        self.addTouchUpInsideEvents(model, selector:#selector(DummyButtonModel.TouchUpInside(_:)))
        self.addTouchUpOutsideEvents(model, selector:#selector(DummyButtonModel.TouchUpOutside(_:)))
*/
    }
    func Hoge(){
        print("Hello Hoge2")
    }
    func AllTouchEvents(){
        print("--------------------")
        print("name:" + name)
        print("AllTouchEvents")
        print("--------------------")
    }
    
    func TouchDown(){
        print("--------------------")
        print("name:" + name)
        print("TouchDown")
        print("--------------------")
    }

    func TouchUpInside(){
        print("--------------------")
        print("name:" + name)
        print("TouchUpInside")
        print("--------------------")
    }
    

    func TouchUpOutside(){
        print("--------------------")
        print("name:" + name)
        print("TouchUpOutside")
        print("--------------------")
    }
}