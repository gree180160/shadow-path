//
//  AddPath.swift
//  Shadow
//
//  Created by WillowRivers on 16/7/12.
//  Copyright © 2016年 WillowRivers. All rights reserved.
//

import UIKit

class AddPath: UIView {
    
    override func drawRect(rect: CGRect) {
        //self.backgroundColor = UIColor.whiteColor() ;
        let context = UIGraphicsGetCurrentContext() ;
        CGContextBeginPath(context) ;
        CGContextSetRGBFillColor(context, 1, 0, 1, 1) ;
        CGContextSetRGBStrokeColor(context, 0, 1, 0, 1) ;
        
        CGContextAddRoundRect(context!, x1: 10 , y1: 10 , width: 100, height: 300, radius: 10 ) ;
        //CGContextClosePath(context) ;
        CGContextFillPath(context) ;
        
        CGContextAddStar(context!, n: 5, dx: 150, dy: 400, size: 100) ;
        
        CGContextStrokePath(context) ;
        
        CGContextBeginPath(context) ;
        CGContextAddFlower(context!, n: 5 , dx: 150 , dy: 400, size: 20 , length: 200) ;
        CGContextFillPath(context) ;
        CGContextClosePath(context) ;
    }
    
    
    //draw roundRect
    func CGContextAddRoundRect(context : CGContextRef , x1 : CGFloat , y1 : CGFloat , width : CGFloat , height : CGFloat , radius : CGFloat)  //
    {
        CGContextMoveToPoint(context, x1 + radius , y1) ;  //startpoint
        CGContextAddLineToPoint(context, x1 + width - radius , y1) ;  //startPath
        CGContextAddArcToPoint(context, x1 + width, y1, x1 + width , y1 + radius , radius) ;
        CGContextAddLineToPoint(context, x1 + width, y1 + height - radius) ;
        CGContextAddArcToPoint(context, x1 + width , y1 + height , x1 + width - radius , y1 + height, radius) ;
        CGContextAddLineToPoint(context, x1 + radius , y1 + height) ;
        CGContextAddArcToPoint(context, x1, y1 + height , x1 , y1 + height - radius , radius) ;
        CGContextAddLineToPoint(context, x1, y1 + radius) ;
        CGContextAddArcToPoint(context, x1, y1, x1 + radius , y1, radius) ;
        
    }
    
    //draw stars
    func CGContextAddStar(context : CGContextRef , n : CGFloat , dx : CGFloat , dy : CGFloat , size : CGFloat )
    {
        let dig : CGFloat = CGFloat(4 * M_PI) / n ;
        CGContextMoveToPoint(context, dx , dy + size) ;
        for(var i : CGFloat = 1.0 ; i <= n ; i++)
        {
            let x : CGFloat = sin(i * dig) ;
            let y : CGFloat = cos(i * dig) ;
            CGContextAddLineToPoint(context , x * size + dx , y * size + dy ) ;
        }
    }
    
    // draw flower
    func CGContextAddFlower(context : CGContextRef , n : CGFloat , dx : CGFloat , dy : CGFloat , size : CGFloat , length : CGFloat)
    {
        CGContextMoveToPoint(context, dx , dy + size) ;
        let dig = CGFloat( 2 * M_PI) / n ;
        for(var i : CGFloat = 1 ; i <= n ; i++)
        {
            let contrx = sin((i - 0.5) * dig) * length + dx ;
            
            let contry = cos((i - 0.5) * dig) * length + dy ;
            
            let endx = sin(i * dig) * size + dx ;
            let endy = cos(i * dig) * size + dy ;
            
            CGContextAddQuadCurveToPoint(context, contrx, contry, endx, endy) ;
            
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
