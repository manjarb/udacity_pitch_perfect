//
//  ImageContentMode.swift
//  PitchPerfect
//
//  Created by Varis Darasirikul on 21/1/2561 BE.
//  Copyright © 2561 JarbStudio. All rights reserved.
//

import UIKit

// Inspectable image content mode
extension UIButton {
    /// 0 => .ScaleToFill
    /// 1 => .ScaleAspectFit
    /// 2 => .ScaleAspectFill
    @IBInspectable
    var imageContentMode: Int {
        get {
            return self.imageView?.contentMode.rawValue ?? 0
        }
        set {
            if let mode = UIViewContentMode(rawValue: imageContentMode),
                self.imageView != nil {
                self.imageView?.contentMode = mode
            }
        }
    }
}
