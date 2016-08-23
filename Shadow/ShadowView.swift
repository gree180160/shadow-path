//
//  ShadowView.swift
//  Shadow
//
//  Created by WillowRivers on 16/7/11.
//  Copyright © 2016年 WillowRivers. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder) ;
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame) ;
        self.backgroundColor = UIColor.whiteColor() ;
    }
    override func drawRect(rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext() ;
        
        CGContextSetShadow(context, CGSize(width: 30, height: 56), 1.0) ;
        
        CGContextSetRGBFillColor(context, 1, 0, 0, 1) ;
        CGContextSetRGBStrokeColor(context, 0, 0, 1, 1) ;
        CGContextSetTextDrawingMode(context, .Stroke) ;
        let string :NSString = "Prove you are so good .let them love you !"
        string.drawAtPoint(CGPoint(x: 20, y: 20), withAttributes: nil) ;
        
        CGContextSetTextDrawingMode(context, .Fill) ;
        let string2 : NSString = "Get the one you love by your effort not their mercy" ;
        string2.drawAtPoint(CGPoint(x: 20, y: 300), withAttributes: [NSFontAttributeName: UIFont.systemFontOfSize(16) , NSForegroundColorAttributeName : UIColor.redColor() , NSParagraphStyleAttributeName : NSMutableParagraphStyle()]) ;
        
        
        CGContextSetShadowWithColor(context, CGSize(width: -4, height: -8), 2 , UIColor.blueColor().CGColor) ;
        CGContextFillRect(context, CGRect(x: 200, y: 400, width: 100, height: 100)) ;
        
        
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
