//
//  UICollectionViewIdentifier.swift
//  Goal Digger
//
//  Created by rian on 7/20/23.
//

import UIKit

extension UICollectionViewCell {
    
    static var cellId: String {
        String(describing: self)
    }
}
