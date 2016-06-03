//
//  ViewController.swift
//  MockUpText
//
//  Created by foxtailmillet on 2016/05/18.
//  Copyright © 2016年 foxtailmillet. All rights reserved.
//

import UIKit

class _MainCtrl: RegisterEvent {
    
    override func initCtrl(){
        //addAllTouchEvents("LastButton", selector: #selector(LastButtonModel.AllTouchEvents(_:)))
//        addTouchDownEvents("LastButton", model:LastButtonModel(), selector: #selector(LastButtonModel.TouchDown(_:)))
        //addTouchUpInsideEvents("LastButton", selector: #selector(LastButtonModel.TouchUpInside(_:)))
        //addTouchUpOutsideEvents("LastButton", selector: #selector(LastButtonModel.TouchUpOutside(_:)))
        
        /*
        MainEventHandler().addEvent(self, name1:"LastButton", name2:"DummyButton")

        */
        PerformUtils.PerformeMethod("all", closure:{self.TestMethod()})
    }
    
    func TestMethod(){
        //// Method Test Start ////////
        let button = getSubView("PrevButton") as! SMButton
        
        let parent = button.getRootView()
        
        print("parent:")
        print(parent.subviews.first!.valueForKey("name"))
        
        let v = getView("LastButton")
        print("view:")
        if (v != nil){
            print(v!.valueForKey("name"))
            
            let test = {()->Void in
            (v as! UIButton).setTitle("LLastBButton", forState: UIControlState.Normal)
            }
            
            PerformUtils.PerformeMethod("setTitle", closure:test)
        }
        
        print("Hello Swift.")
        //// Method Test End //////////
    }
    
}

