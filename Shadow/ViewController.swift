//
//  ViewController.swift
//  Shadow
//
//  Created by WillowRivers on 16/7/11.
//  Copyright © 2016年 WillowRivers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shadowV : ShadowView! ;
    var pathV : Path! ;
    var addPath : UIView! ;
    override func viewDidLoad() {
        super.viewDidLoad() ;
        let viewW = view.frame.width ;
        let viewH = view.frame.height ;
        view.backgroundColor = UIColor.whiteColor() ;
        
        shadowV = ShadowView(frame: CGRectMake(5 , 0 , viewW - 10 , viewH / 3)) ;
        
        pathV = Path(frame: CGRectMake(5 , shadowV.frame.maxY , viewW - 10 , viewH / 3)) ;
        
        addPath = AddPath() ;
        addPath.backgroundColor = UIColor.whiteColor() ;
        addPath.frame = CGRectMake(5, pathV.frame.maxY, viewW - 10 , viewH / 3) ;
        //view = ShadowView() ;
        //view = Path() ;
        //view = AddPath() ;
        view.backgroundColor = UIColor.whiteColor() ;
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(shadowV) ;
        view.addSubview(pathV) ;
        view.addSubview(addPath) ;
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true ;
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

