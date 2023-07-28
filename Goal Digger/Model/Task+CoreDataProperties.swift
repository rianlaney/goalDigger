//
//  Task+CoreDataProperties.swift
//  Goal Digger
//
//  Created by rian on 7/26/23.
//
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var taskName: String?
    @NSManaged public var startDate: Date?
    @NSManaged public var endDate: Date?
    @NSManaged public var goal: Goal?

}

extension Task : Identifiable {

}
