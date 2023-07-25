//
//  Goal+CoreDataProperties.swift
//  Goal Digger
//
//  Created by rian on 7/24/23.
//
//

import Foundation
import CoreData


extension Goal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Goal> {
        return NSFetchRequest<Goal>(entityName: "Goal")
    }

    @NSManaged public var task: String?
    @NSManaged public var time: Int64
    @NSManaged public var completion: Bool

}

extension Goal : Identifiable {

}
