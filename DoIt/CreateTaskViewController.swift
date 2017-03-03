//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Daniel Bonaparte on 3/3/17.
//  Copyright © 2017 bonapARTe. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    
    @IBOutlet var taskNameTextField: UITextField!
    @IBOutlet var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: AnyObject) {
        // create a task from the outlets information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        
        // add new task to array in previous view controller
        
        previousVC.tasks.append(task)
        
    }
  

}
