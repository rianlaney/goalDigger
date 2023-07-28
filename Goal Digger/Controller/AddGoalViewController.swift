//
//  AddGoalViewController.swift
//  Goal Digger
//
//  Created by rian on 7/20/23.
//

import UIKit
import CoreData

class AddGoalViewController: UIViewController {

    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var tasks: [Task] = []
    
    @IBOutlet weak var titleText: UILabel!
    

    
    private lazy var formContentBuilder = FormContentBuilder()
    private lazy var formCompLayout = FormCompositonLayout()
    private lazy var dataSource = makeDataSource()
    
    private lazy var collectionVw: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: formCompLayout.layout)
        cv.backgroundColor = .clear
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(FormButtonCollectionViewCell.self, forCellWithReuseIdentifier: FormButtonCollectionViewCell.cellId)
        cv.register(FormTextCollectionViewCell.self, forCellWithReuseIdentifier: FormTextCollectionViewCell.cellId)
        
        
        return cv
    }()
    
//    @IBAction func confirmButtonTapped(_ sender: UIButton) { let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let goalViewController = storyboard.instantiateViewController(withIdentifier: "GoalViewContoller") as! GoalViewController; navigationController?.pushViewController(goalViewController, animated: true)
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.titleText.text = "Think of 3 things you want to accomplish this year, and 5 daily steps you can do to get you 1% closer to that goal"
        setup()
        updateDataSource()
        
        
        // Core Data
        // save tasks
    }
   
    func btnTapped() {
        
    }
}

private extension AddGoalViewController {
    func setup(){
        
        view.backgroundColor = .white
        
        collectionVw.dataSource = dataSource
        
        
        view.addSubview(collectionVw)
        
        NSLayoutConstraint.activate([
            collectionVw.topAnchor.constraint(equalTo: view.topAnchor),
            collectionVw.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionVw.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionVw.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    func makeDataSource() -> UICollectionViewDiffableDataSource<FormSectionComponent, FormComponent> {
        return UICollectionViewDiffableDataSource(collectionView: collectionVw) {collectionVw, indexPath, item in
            switch item {
            
            case is TextFormComponent:
                let cell = collectionVw.dequeueReusableCell(withReuseIdentifier: FormTextCollectionViewCell.cellId, for: indexPath) as! FormTextCollectionViewCell
                cell.bind(item)
                return cell
                
            case is ButtonFormComponent:
                let cell = collectionVw.dequeueReusableCell(withReuseIdentifier: FormButtonCollectionViewCell.cellId, for: indexPath) as! FormButtonCollectionViewCell
                cell.bind(item, buttonAction: {
                    
                })
                return cell
            default:
                let cell = collectionVw.dequeueReusableCell(withReuseIdentifier: UICollectionViewCell.cellId, for: indexPath)
                return cell
            }
        }
    }
    func updateDataSource(animated: Bool = false) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            var snapshot = NSDiffableDataSourceSnapshot<FormSectionComponent, FormComponent>()
            
            let formSections = self.formContentBuilder.content
            snapshot.appendSections(formSections)
            formSections.forEach{ snapshot.appendItems($0.items, toSection: $0) }
            
            self.dataSource.apply(snapshot, animatingDifferences: animated)
        }
    }
    
}

