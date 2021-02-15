//
//  CustomTextField.swift
//  AppDesign
//
//  Created by Акнур on 1/13/21.
//  Copyright © 2021 Акнур. All rights reserved.
//

import Foundation
import UIKit

class CustomTextField: UITextField {
       let padding : CGFloat
       init(padding : CGFloat) {
           self.padding = padding
           super.init(frame : .zero)
           layer.cornerRadius = 25
           textAlignment = .center
           UIFont.boldSystemFont(ofSize: 15)
           backgroundColor = .white
       }
    
       override func textRect(forBounds bounds: CGRect) -> CGRect {
           return bounds.insetBy(dx: padding, dy: 0)
        
       }
       
       override func editingRect(forBounds bounds: CGRect) -> CGRect {
           return bounds.insetBy(dx: padding, dy: 0)
       }
       
       override var intrinsicContentSize: CGSize {
           return .init(width: 0, height: 50)
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
   }



