//
//  imageView.swift
//  BookRepo
//
//  Created by hanif hussain on 13/03/2024.
//

import UIKit

class imageView: UIImageView {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        contentMode = .scaleAspectFit
        
    }
    
    
    func set(urlString: String) {
        
    }
    
}
