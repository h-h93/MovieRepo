//
//  ViewController+Ext.swift
//  BookRepo
//
//  Created by hanif hussain on 11/03/2024.
//

import UIKit

extension UIViewController {
    
    func addSubviews(_ views: UIView...) {
        for view in views { self.view.addSubview(view) }
    }
}
