//
//  ViewController.swift
//  BookRepo
//
//  Created by hanif hussain on 10/03/2024.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        Task {
            try await NetworkManager.shared.getTrending()
        }
    }


}

