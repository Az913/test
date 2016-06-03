//
//  Content.swift
//  MockUpText
//
//  Created by 粟飯原 on 2016/05/30.
//  Copyright © 2016年 foxtailmillet. All rights reserved.
//

import UIKit

class TimelineCell: AbstractTableCellView {
    @IBAction func action_Apple(sender: UIButton) {
        if (selector_Apple != nil){
            performSelector(selector_Apple!)
        }
    }
    
    var selector_Apple:Selector? = nil
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet var view: Content!
    
    func setBodyText(text:String){
        label.text = text
    }
}
