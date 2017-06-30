//
//  TransparentUITextField.swift
//  LoveParadise
//
//  Created by Mac on 6/29/17.
//  Copyright © 2017 DHT. All rights reserved.
//

import UIKit

@IBDesignable
class TransparentUITextField: UITextField {

}

extension TransparentUITextField {
  @IBInspectable var cornerRadius: CGFloat {
    get {
      return self.layer.cornerRadius
    }
    
    set {
      self.layer.cornerRadius = newValue
    }
  }
  
  // Borders
  // Border width
  @IBInspectable
  public var borderWidth: CGFloat {
    set {
      layer.borderWidth = newValue
    }
    
    get {
      return layer.borderWidth
    }
  }
  
  // Border color
  @IBInspectable
  public var borderColor: UIColor? {
    set {
      layer.borderColor = newValue?.cgColor
    }
    
    get {
      if let borderColor = layer.borderColor {
        return UIColor(cgColor: borderColor)
      }
      return nil
    }
  }
  
//  @IBInspectable
//  override public var backgroundColor: UIColor? {
//    set {
//      layer.backgroundColor = newValue?.cgColor
//    }
//    get {
//      if let backgroundColor = layer.backgroundColor {
//        return UIColor(cgColor: backgroundColor)
//      }
//      return nil
//    }
//  }
}
