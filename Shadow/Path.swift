
//
//  Path.swift
//  Shadow
//
//  Created by WillowRivers on 16/7/11.
//  Copyright © 2016年 WillowRivers. All rights reserved.
//

import UIKit

class Path: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder) ;
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame) ;
        self.backgroundColor = UIColor.whiteColor() ;
    }
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext() ;
        
        for(var i : CGFloat = 0 ; i < 10 ;i++)
        {
            CGContextBeginPath(context) ;
            CGContextAddArc(context, i * 25.0 , i * 25.0 , (i + 1) * 8, CGFloat(M_PI * 0) , CGFloat(M_PI * 1.5) , 1) ;
            CGContextClosePath(context) ;
            CGContextSetRGBFillColor(context, 1, 0, 0, 0.5) ;
            CGContextFillPath(context) ;
            
        }
     }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
