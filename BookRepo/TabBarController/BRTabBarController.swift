//
//  BRTabBarController.swift
//  BookRepo
//
//  Created by hanif hussain on 10/03/2024.
//

import UIKit

class BRTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    
    private func configure() {
        let appeareance = UITabBarAppearance()
        appeareance.configureWithOpaqueBackground()
        UITabBar.appearance().standardAppearance = appeareance
        UITabBar.appearance().scrollEdgeAppearance = appeareance
        UITabBar.appearance().tintColor = .systemMint
        viewControllers = [createHomeNC()]
    }
    
    
    private func createHomeNC() -> UINavigationController {
        let homeVC = HomeVC()
        homeVC.title = "Open Library"
        homeVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "book.pages"), tag: 0)
        return UINavigationController(rootViewController: homeVC)
    }
    

}
