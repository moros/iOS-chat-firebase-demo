//
//  LoginViewController.swift
//  Flash Chat
//
//  Created by Doug Mason on 3/24/18.
//  Copyright © 2018 moros. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class LogInViewController: UIViewController
{
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    @IBAction func logInPressed(_ sender: AnyObject)
    {
        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print("error: \(error!)")
                return
            }
            
            SVProgressHUD.dismiss()
            self.performSegue(withIdentifier: "goToChat", sender: self)
        }
    }
}  
