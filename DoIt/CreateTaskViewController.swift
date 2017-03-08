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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: AnyObject) {
        // create a task from the outlets information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop back
        
        navigationController!.popViewController(animated: true)
        }
  

}
