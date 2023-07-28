//
//  FormContentBuilder.swift
//  Goal Digger
//
//  Created by rian on 7/20/23.


// Questions is this ok or should I make an array for each section

import Foundation

final class FormContentBuilder {
    var content: [FormSectionComponent] {
        
        return [
            FormSectionComponent(items: [
                //section A
                TextFormComponent(placeholder: "Main Goal A"), // doesnt need to save
                TextFormComponent(placeholder: "Daily Tasks"),
                TextFormComponent(placeholder: "Daily Tasks"),
                TextFormComponent(placeholder: "Daily Tasks"),
                TextFormComponent(placeholder: "Daily Tasks"),
                TextFormComponent(placeholder: "Daily Tasks")]),
                                 // section B
            FormSectionComponent(items: [
                TextFormComponent(placeholder: "Main Goal B"),
                TextFormComponent(placeholder: "Daily Tasks"),
                TextFormComponent(placeholder: "Daily Tasks"),
                TextFormComponent(placeholder: "Daily Tasks"),
                TextFormComponent(placeholder: "Daily Tasks"),
                TextFormComponent(placeholder: "Daily Tasks")]),
                                    // section C
            FormSectionComponent(items: [
                TextFormComponent(placeholder: "Main Goal C"),
                TextFormComponent(placeholder: "Daily Tasks"),
                TextFormComponent(placeholder: "Daily Tasks"),
                TextFormComponent(placeholder: "Daily Tasks"),
                TextFormComponent(placeholder: "Daily Tasks"),
                TextFormComponent(placeholder: "Daily Tasks"),
                                                        
                ButtonFormComponent(title: "Confirm")
                            ])
            ]
        }
    }
