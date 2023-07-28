//
//  RecommendationViewController.swift
//  Goal Digger
//
//  Created by rian on 7/19/23.
//

import UIKit
import CoreData
//task avgTime completed% timeRecomended
// fetch
// update - edit tasks slider
// reset timer back to 0 slider

class RecommendationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var tasks: [Task] = []
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
//        fetchTasks()
    }

    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        // task
        let task = self.tasks[indexPath.row]
        cell.textLabel!.text = task.taskName
        
        // Avg time spent
//        cell.textLabel?.text = String(task.endDate. - task.startDate)
        
        // Completed ratio how to turn into %
        cell.textLabel?.text = String()
        
        // Time recoomendend
//        if task.completion == 100 {
//            task.time += 5
//        } else {
//            task.time -= (Double(task.time) / 1.15)
//        }
        return cell
    }
//    func tableView(_ tableView: UITableView, editActionsForRowat indexPath: IndexPath) -> [UITableViewRowAction]? {
//        let editAction = UITableViewRowAction(style: .default, title: "Change") { (action, indexPath) in
//            self.updateAction(task: tasks, indexPath: indexPath)
//        }
////        let deleteAction = UITableViewRowAction(style: .default, title: "Reset") { (action, indexPath) in
////            self.deleteAction(task: tasks, indexPath: indexPath)
////        }
//////        editAction.backgroundColor = .blue
//////        deleteAction.backgroundColor = .red
////        return [deleteAction, editAction]
//    }
    
//    private func updateAction(task: tasks.taskName, indexPath: IndexPath) {
//        let alert = UIAlertController(title: "Update", message: "Update Task", preferredStyle: .alert)
//        let saveAction = UIAlertAction(title: "Save", style: .default) {(action) in
//            guard let textField = alert.textFields?.first else {
//                return
//            }
//            if let textToEdit = textField.text {
//                if textToEdit.count == 0 {
//                    return
//                }
//                task.task = textToEdit
//                self.tableView.reloadRows(at: [indexPath], with: .automatic)
//            } else {
//                return
//            }
//        }
//        let cancelAction = UIAlertAction(title: "Cancel", style: .default)
//        
//        alert.addTextField()
//        guard let textField = alert.textFields?.first else {
//            return
//        }
//        textField.placeholder =  "Update Task"
//        alert.addAction(saveAction)
//        alert.addAction(cancelAction)
//        present(alert, animated: true)
//    }
    // how to reset to 0
//    private func deleteAction(task: tasks, indexPath: IndexPath) {
//        let alert = UIAlertController(title: "Reset", message: "Are you sure?", preferredStyle: .alert)
//        let deleteAction = UIAlertAction(title: "Yes", style: .default) { (action) in
//            tasks.remove(at: indexPath.row)
//            self.tableView?.deleteRows(at: [indexPath], with: .automatic)
//        }
//        let cancelAction = UIAlertAction(title: "No", style: .default, handler: nil)
//        alert.addAction(deleteAction)
//        alert.addAction(cancelAction)
//        present(alert, animated: true)
//    }
    
//    func fetchTasks() {
//        do {
//            self.tasks = try context.fetch(Goals.fetchRequest())
//
//            DispatchQueue.main.async {
//                self.tableView.reloadData()
//            }
//
//        }
//        catch {
//            print("error fetching tasks")
//        }
//    }
}

