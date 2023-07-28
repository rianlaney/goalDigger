//
//  GoalViewController.swift
//  Goal Digger
//
//  Created by rian on 7/19/23.
//

import UIKit
import CoreData

class GoalViewController: UIViewController {
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var tasks: [Task]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        fetchTasks()
    }
    
    // GOAL ONE
    // 1. how to save if user quits
    @IBAction func goal1(_ sender: UITextField) {
    }
    
    @IBAction func startTime1(_ sender: UIDatePicker) {
    }
    @IBAction func stopTime1(_ sender: UIDatePicker) {
    }
    //------------------------------------------------
    // GOAL TWO
    
    @IBAction func goal2(_ sender: UITextField) {
    }
    
    @IBAction func startTime2(_ sender: UIDatePicker) {
    }
    
    @IBAction func stopTime2(_ sender: UIDatePicker) {
    }
    
    //-------------------------------------------------
    // GOAL THREE
    
    @IBAction func goal3(_ sender: UITextField) {
    }
    
    @IBAction func startTime3(_ sender: UIDatePicker) {
    }
    
    @IBAction func stopTime3(_ sender: UIDatePicker) {
    }
    
    
    
    //-----------------------------------------------
    // Not ToDo
    
    
    @IBAction func goal4(_ sender: UITextField) {
    }
    
    @IBAction func slider(_ sender: UISlider) {
    }
    
    // Core Data
//    func fetchTasks() {
//        do {
//            self.tasks = context.fetch(Task.fetchRequest())
//            DispatchQueue.main.async {
//                // will I need to reload the data
//            }
//
//        }
//        catch {
//            print("error fetching tasks")
//        }
//
//    }
    
}
