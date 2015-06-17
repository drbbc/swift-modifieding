//
//  SSBaseScrollView.swift
//  swift-modifieding
//
//  Created by IOSDEV on 15/6/17.
//  Copyright (c) 2015年 DRBBC. All rights reserved.
//

import UIKit

class SSBaseScrollView: UIScrollView {
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        super.touchesBegan(touches, withEvent: event)
        if (!self.dragging){
            self.nextResponder()?.touchesBegan(touches, withEvent: event)
        }
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        super.touchesEnded(touches, withEvent: event)
        if (!self.dragging){
            self.nextResponder()?.touchesEnded(touches, withEvent: event)
        }
    }
}
