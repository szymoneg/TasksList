//
//  TaskViewController.swift
//  ToDoListApp
//
//  Created by Szymon Biliński on 23/03/2021.
//

import UIKit

class TaskViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var task: String?
    
    var update: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = task
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    
    @objc func deleteTask(){
        
        guard let count = UserDefaults().value(forKey: "count") as? Int else{
            return
        }
        
        
        let newCount = count - 1
        
        UserDefaults().set(newCount, forKey: "count")
        
        update?()
        
        navigationController?.popViewController(animated: true)
    }

}
