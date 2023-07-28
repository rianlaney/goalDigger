//
//  FormCompsitionLayout.swift
//  Goal Digger
//
//  Created by rian on 7/21/23.
// 3 section with 1 group and 5 items

import UIKit

final class FormCompositonLayout {
    var layout: UICollectionViewLayout {
        // Setting up Items
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(44))
        
        let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        layoutItem.edgeSpacing = NSCollectionLayoutEdgeSpacing(leading: nil, top: .fixed(16), trailing: nil, bottom: .fixed(16))
        
        // Setting up Group
        let layoutGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(44))
        let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: layoutGroupSize, subitem: layoutItem, count: 1)
        
        layoutGroup.contentInsets = .init(top: 0, leading: 16, bottom: 0, trailing: 16)
        
        // Setting up sections
        let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
        layoutSection.contentInsets = .init(top: 75, leading: 0, bottom: 0, trailing: 0)
        
        let compLayout = UICollectionViewCompositionalLayout(section: layoutSection)
        
        return compLayout
    }
}
