//
//  HomeVC+Ext.swift
//  BookRepo
//
//  Created by hanif hussain on 13/03/2024.
//

import UIKit

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return trendingBooks.count
        case 1:
            return 5
        default:
            return 20
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as UICollectionViewCell
            cell.backgroundColor = .random
            return cell
            
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as UICollectionViewCell
            cell.backgroundColor = .random
            return cell
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            return setHeadingForSection(kind: kind, index: indexPath.section, indexPath: indexPath)
            
//        case UICollectionView.elementKindSectionFooter:
//            guard let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Footer", for: indexPath) as? CollectionHeaderView else { fatalError("Unable to dequeue trending footer view")}
//            footer.label.text = "This is a footer view add label"
//            return footer
            
        default:
            fatalError("Unable to dequeue reusable view or idnex out of range")
        }
    }
    
    
    func setHeadingForSection(kind: String, index: Int, indexPath: IndexPath) -> UICollectionReusableView {
        switch index {
        case 0:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Header", for: indexPath) as? CollectionHeaderView else { fatalError("Unable to dequeue trending header view")}
            header.label.text = "Trending"
            return header
            
        case 1:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Header", for: indexPath) as? CollectionHeaderView else { fatalError("Unable to dequeue trending header view")}
            header.label.text = "Classic Books"
            return header
            
        case 2:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Header", for: indexPath) as? CollectionHeaderView else { fatalError("Unable to dequeue trending header view")}
            header.label.text = "Books We Love"
            return header
            
        case 3:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Header", for: indexPath) as? CollectionHeaderView else { fatalError("Unable to dequeue trending header view")}
            header.label.text = "Recently Returned"
            return header
            
        case 4:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Header", for: indexPath) as? CollectionHeaderView else { fatalError("Unable to dequeue trending header view")}
            header.label.text = "Romance"
            return header
            
        default:
            fatalError("Unable to dequeue header reusable view or index out of range")
        }
    }
}

