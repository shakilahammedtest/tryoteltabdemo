//
//  CustomButton.swift
//  TabViewDemo
//
//  Created by Ashraf Ahmed on 22/10/19.
//  Copyright © 2019 Shakil Ahammed. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton{
    @IBInspectable var cornerRadius:CGFloat = 0.0 {
        didSet{
            updateView()
        }
    }
    
    func updateView() {
        self.layer.cornerRadius = self.cornerRadius
    }
}


@IBDesignable
class AddButton: UIButton{
    @IBInspectable var borderWidth:CGFloat{
        set{
            layer.borderWidth = newValue
        }
        get{
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius:CGFloat{
        set{
            layer.cornerRadius = newValue
        }
        get{
            return layer.cornerRadius
        }
    }
    
    
    @IBInspectable var borderColor:UIColor?{
        set{
            guard let uicolor = newValue else {return }
            layer.borderColor = uicolor.cgColor
        }
        get{
            guard let cgcolor = layer.borderColor else {return nil}
            return UIColor(cgColor: cgcolor)
        }
    }
}
