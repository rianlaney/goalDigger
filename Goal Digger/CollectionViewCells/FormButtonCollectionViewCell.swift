//
//  FormButtonCollectionViewCell.swift
//  Goal Digger
//
//  Created by rian on 7/20/23.
//

import UIKit

class FormButtonCollectionViewCell: UICollectionViewCell {
    
    private lazy var actionBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .systemBlue
        btn.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        
        return btn
    }()
    
    func bind(_ item: FormComponent, buttonAction: @escaping () -> Void) {
        guard let item = item as? ButtonFormComponent else { return }
        setup(item: item, buttonAction: buttonAction)
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        removeViews()
    }
}

private extension FormButtonCollectionViewCell {
    
    func setup(item: ButtonFormComponent, buttonAction: @escaping ()->Void) {
        
        actionBtn.setTitle(item.title, for: .normal)
        actionBtn.addAction(UIAction(handler: { _ in
            buttonAction()
        }), for: .primaryActionTriggered)
        
        contentView.addSubview(actionBtn)
        
        NSLayoutConstraint.activate([
            actionBtn.heightAnchor.constraint(equalToConstant: 44),
            actionBtn.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            actionBtn.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            actionBtn.topAnchor.constraint(equalTo: contentView.topAnchor),
            actionBtn.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        
        ])
        
    }
}
