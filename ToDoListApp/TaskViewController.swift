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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = task
        
        navigationItem.rightBarButtonItem = UIBarButtonItem
    }
    
    
    @objc func deleteTask(){
            
    }

}
