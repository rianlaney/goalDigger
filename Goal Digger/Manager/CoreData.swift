//
//  CoreData.swift
//  Goal Digger
//
//  Created by rian on 7/26/23.
//

import CoreData
import UIKit


class CoreDataManager {
    static let shared = CoreDataManager()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Goal_Digger")
        
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error {
                fatalError("Fatal error loading store: \(error.localizedDescription)")
            }
        }
        return container
    }()

   // create goal object - save data when confirm button gets tapped
    // textFormComponent has a place holder which is a string
    // goal has a goal name
    
//    var goalA = Goal(context: self.context)
//    goalA.goalName = textField.text
//
//    var goalB = Goal(context: self.context)
//    goalA.goalName = textField.text
//
//    var goalC = Goal(context: self.context)
//    goalA.goalName = textField.text
    
//    var task1 = Task(context: self.context)
//    task1.taskName = something.textFields![1].text
//
//    var task2 = Task(context: self.context)
//    task2.taskName = something.textFields![2].text
//
//    var task3 = Task(context: self.context)
//    task3.taskName = something.textFields![3].text
//
//    var task4 = Task(context: self.context)
//    task4.taskName = something.textFields![4].text
//
//    var task5 = Task(context: self.context)
//    task1.taskName = something.textFields![5].text
    
    
    
    // save to coredata
//    do {
//        try self.context.save()
//    }
//    catch {
//        print(Error)
//    }
    
    
// save tasks from form
    func saveTasks(tasks: String) {
        let context = persistentContainer.viewContext
        
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
   
    
    
}
