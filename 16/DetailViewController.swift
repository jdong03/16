//
//  DetailViewController.swift
//  16
//
//  Created by Jason Dong on 7/16/18.
//  Copyright © 2018 Jason Dong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var assignmentTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var subjectTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item
        if let assignment = self.detailItem {
            if assignmentTextField != nil {
                assignmentTextField.text = assignment.name
                dueDateTextField.text = assignment.dueDate
                subjectTextField.text = assignment.subject
                descriptionTextField.text = assignment.description
            }
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem {
            assignment.name = assignmentTextField.text!
            assignment.dueDate = dueDateTextField.text!
            assignment.subject = subjectTextField.text!
            assignment.description = descriptionTextField.text!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

