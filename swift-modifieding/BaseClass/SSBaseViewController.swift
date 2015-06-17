//
//  SSBaseViewController.swift
//  swift-modifieding
//
//  Created by IOSDEV on 15/6/17.
//  Copyright (c) 2015年 DRBBC. All rights reserved.
//

import UIKit


class SSBaseViewController: UIViewController {

    var bgScroll:SSBaseScrollView?
    var rightButton:UIButton?
    var leftButton:UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgScroll = SSBaseScrollView(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height))
        self.navigationController?.navigationBar.translucent = true
        self.navigationController?.navigationBar.backgroundColor = UIColor(red: 1, green: 136/255.0, blue: 0, alpha: 1)
        self.navigationController?.navigationBar.titleTextAttributes = [UIColor.orangeColor():NSForegroundColorAttributeName,UIFont.systemFontOfSize(12):NSFontAttributeName]
        
        self.leftButton = UIButton(frame: CGRectMake(0, 0, 44, 44))
        self.leftButton?.addTarget(self, action:"back", forControlEvents: UIControlEvents.TouchUpInside)
        self.leftButton?.setTitle("返回", forState: UIControlState.Normal)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func back(){
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    
    
    

}
