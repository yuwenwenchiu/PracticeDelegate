//
//  UserInfoViewController.swift
//  PracticeDelegate
//
//  Created by Yuwen Chiu on 2020/1/27.
//  Copyright © 2020 YuwenChiu. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func editUserInfoPressed(_ sender: UIButton) {
        
        let editViewController = storyboard?.instantiateViewController(withIdentifier: "Edit") as! EditViewController
        editViewController.delegate = self
        self.present(editViewController, animated: true, completion: nil)
    }
}

extension UserInfoViewController: EditViewControllerDelegate {
    
    func setUserName(userName: String) {
        
        userNameLabel.text = userName
    }
}
