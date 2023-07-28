//
//  UICollectionViewCellCleanUp.swift
//  Goal Digger
//
//  Created by rian on 7/20/23.
//

import UIKit

extension UICollectionViewCell {
    
    func removeViews() {
        contentView.subviews.forEach { $0.removeFromSuperview() }
    }
}
