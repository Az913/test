//
//  MainEventHandler.swift
//  MockUpText
//
//  Created by foxtailmillet on 2016/05/24.
//  Copyright © 2016年 foxtailmillet. All rights reserved.
//

import UIKit

class _MainEventHandler:NSObject{
    func addEvent(vc:_MainCtrl, name1:String, name2:String){
        let control1 = vc.getView(name1) as! UIControl
        let control2 = vc.getView(name2) as! UIControl
        
        control1.addTarget(control2, action:#selector(Hoge), forControlEvents:.TouchDown)
    }
    
    func Hoge(){
        print("Hello Hoge")
    }
}
