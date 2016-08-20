//
//  UIColorEx.swift
//  LiquidLoading
//
//  Created by Takuma Yoshida on 2015/08/21.
//  Copyright (c) 2015年 yoavlt. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    var components: UnsafePointer<CGFloat> { get { return cgColor.__unsafeComponents! } }
    
    var cRed: CGFloat { get { return components[0] } }
    
    var cGreen: CGFloat { get { return components[1] } }
    
    var cBlue: CGFloat { get { return components[2] } }

    var alpha: CGFloat { get { return cgColor.alpha } }

    func _alpha(_ alpha: CGFloat) -> UIColor {
        return UIColor(red: self.cRed, green: self.cGreen, blue: self.cBlue, alpha: alpha)
    }
    
    func white(_ scale: CGFloat) -> UIColor {
        return UIColor(
            red: self.cRed + (1.0 - self.cRed) * scale,
            green: self.cGreen + (1.0 - self.cGreen) * scale,
            blue: self.cBlue + (1.0 - self.cBlue) * scale,
            alpha: 1.0
        )
    }
}
