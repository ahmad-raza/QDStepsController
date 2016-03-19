//
//  Constants.swift
//  CarCares
//
//  Created by Ahmad Raza on 12/3/15.
//  Copyright © 2015 Ahmad Raza. All rights reserved.
//

import Foundation
import UIKit

let YELLOW_COLOR = "#f28d00"

let DRIVER_DETAILS: [String] = ["FIRST NAME", "LAST NAME", "ADDRESS", "CITY", "STATE", "EMAIL", "PHONE", "EXTRA PARAMTER", "EXTRA PARAMTER"]

class Constants {
    
    class func animateView(view: UIView) {
        UIView.animateWithDuration(0.2, delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            view.alpha = 0.5
            }, completion: { finished in
                view.alpha = 1.0
        })
    }
    
}