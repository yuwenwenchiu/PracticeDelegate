//
//  EditViewController.swift
//  PracticeDelegate
//
//  Created by Yuwen Chiu on 2020/1/27.
//  Copyright © 2020 YuwenChiu. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    
    @IBOutlet weak var newUserNameTextField: UITextField!
    
    var delegate: EditViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func confirmEditPressed(_ sender: UIButton) {
        
        delegate?.setUserName(userName: newUserNameTextField.text!)
        dismiss(animated: true, completion: nil)
    }
}

protocol EditViewControllerDelegate {
    
    func setUserName(userName: String)
}
