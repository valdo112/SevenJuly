//
//  UIView+Extension.swift
//  SevenJuly
//
//  Created by Valdo Parlinggoman on 07/07/23.
//

import UIKit

extension UIView{
    @IBInspectable var cornerRadius: CGFloat{
        get{ return cornerRadius }
        set{
            self.layer.cornerRadius = newValue
        }
    }
    @IBInspectable var borderWidth: CGFloat{
        get{ return borderWidth }
        set{
            self.layer.borderWidth = newValue
        }
    }
}



extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
