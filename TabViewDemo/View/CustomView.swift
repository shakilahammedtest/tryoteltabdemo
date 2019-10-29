//
//  CustomView.swift
//  TabViewDemo
//
//  Created by Ashraf Ahmed on 22/10/19.
//  Copyright © 2019 Shakil Ahammed. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView{
    
    @IBInspectable var cornerRadius: CGFloat = 10.0{
        didSet{
            self.layer.cornerRadius = self.cornerRadius
        }
    }
}
