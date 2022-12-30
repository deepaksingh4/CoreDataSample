//
//  UIView+Border.swift
//  CDP
//
//  Created by Deepak Singh07 on 12/30/22.
//

import Foundation
import UIKit

extension UIView{
    
    func setBorder(width: Float, color: UIColor){
        self.layer.cornerRadius = 57
        print(self.safeAreaInsets)
        print("----")
        print(self.bounds)
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = CGFloat(width)
    }
}

extension UIButton {
    func addCorner(radius: Float = 10.0)
    {
        self.layer.cornerRadius = CGFloat(radius)
        self.clipsToBounds = true
    }
}
