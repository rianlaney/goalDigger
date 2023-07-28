//
//  FormModel.swift
//  Goal Digger
//
//  Created by rian on 7/20/23.
//

import UIKit

protocol FormItem {
    var id: UUID { get }
}

protocol FormSectionItem {
    var id: UUID { get }
    // Define form items
    var items: [FormComponent] { get }
    // Define form items init
    init(items: [FormComponent])
}

final class FormSectionComponent: FormSectionItem, Hashable{
    var id: UUID = UUID()
    var items: [FormComponent]
    
    init(items: [FormComponent]) {
        self.items = items
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    static func == (lhs: FormSectionComponent, rhs: FormSectionComponent) -> Bool {
        lhs.id == rhs.id
    }
}


class FormComponent: FormItem, Hashable {
    var id: UUID = UUID()
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: FormComponent, rhs: FormComponent) -> Bool {
        lhs.id == rhs.id
    }
}


final class TextFormComponent: FormComponent {
    
    let placeholder: String
//    let textField: UITextField
    let keyboardType: UIKeyboardType
    
    init(placeholder: String, keyboardType: UIKeyboardType = .default) {
        self.placeholder = placeholder
//        self.textField = textField
        self.keyboardType = keyboardType
    }
}


// Button Save
final class ButtonFormComponent: FormComponent {
    let title: String
    
    init(title: String) {
        self.title = title
    }
}

