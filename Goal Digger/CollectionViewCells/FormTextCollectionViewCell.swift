//
//  FormTextCollectionViewCell.swift
//  Goal Digger
//
//  Created by rian on 7/20/23.
//

import UIKit

class FormTextCollectionViewCell: UICollectionViewCell, UITextFieldDelegate {
    
     lazy var txtfield: UITextField = {
        
        let txtField = UITextField()
        txtField.translatesAutoresizingMaskIntoConstraints = false
        txtField.layer.cornerRadius = 8
        txtField.layer.borderWidth = 1
        txtField.layer.borderColor = UIColor.systemGray.cgColor
        txtField.delegate = self
        return txtField
    }()
    // missing the goal form component
    
    func bind(_ item: FormComponent) {
        guard let item = item as? TextFormComponent else { return }
        setup(item: item)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        removeViews()
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(txtfield.text)
    }
}

private extension FormTextCollectionViewCell {
    func setup(item: TextFormComponent) {
        
        txtfield.placeholder = "\(item.placeholder)"
        txtfield.keyboardType = item.keyboardType
        
        contentView.addSubview(txtfield)
        
        NSLayoutConstraint.activate([
            txtfield.heightAnchor.constraint(equalToConstant: 44),
            txtfield.topAnchor.constraint(equalTo: contentView.topAnchor),
            txtfield.bottomAnchor.constraint(equalTo:contentView.bottomAnchor),
            txtfield.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            txtfield.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
}

