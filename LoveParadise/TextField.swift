//
//  TextField.swift
//  LoveParadise
//
//  Created by Jonquille on 27/06/2017.
//  Copyright © 2017 DHT. All rights reserved.
//

import Foundation
import UIKit
class TextField {
    //Hàm check nil TextField
    static func isNil(_ textFields: UITextField...) -> Bool  {
        var check = true
        for textField in textFields {
            if (textField.text?.isEmpty)! {
                check = false
//                textField.showAndHiddenIconTextField(showAndHidden: true)
            }
        }
        return check
    }


}
