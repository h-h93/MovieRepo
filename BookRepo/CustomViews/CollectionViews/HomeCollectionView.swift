//
//  HomeCollectionView.swift
//  BookRepo
//
//  Created by hanif hussain on 12/03/2024.
//

import UIKit

class HomeCollectionView: UICollectionView {
    
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: UICollectionViewFlowLayout.init())
        configureLayout()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configureLayout() {
        let layout = UICollectionViewCompositionalLayout { sectionIndex, environment in
            switch sectionIndex {
            case 0:
                return AppLayout.shared.trendingSection()
            default:
                return AppLayout.shared.trendingSection()
            }
        }
        
        layout.register(UICollectionViewCell.self, forDecorationViewOfKind: "TrendingSection")
        
    }
    
}
