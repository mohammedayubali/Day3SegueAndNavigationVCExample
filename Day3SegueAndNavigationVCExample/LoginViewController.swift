//
//  ViewController.swift
//  Day3SegueAndNavigationVCExample
//
//  Created by moxDroid on 2019-03-06.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var swRememberMe: UISwitch!
    @IBOutlet weak var txtUserPassword: UITextField!
    @IBOutlet weak var txtUserEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefault = UserDefaults.standard
        
        if let email = userDefault.string(forKey: "userEmail")
        {
            txtUserEmail.text = email
            if let pwd = userDefault.string(forKey: "userPassword")
            {
                txtUserPassword.text = pwd
            }
            
            swRememberMe.isOn = true
        }
        else
        {
            swRememberMe.isOn = false
        }
    
        
    }
    
    @IBAction func btnLoginClick(_ sender: Any)
    {
        let email = txtUserEmail.text
        let pwd = txtUserPassword.text
        
        if(email == "a@a.com" && pwd == "123")
        {
            print("Login Success...")
            let userDefault = UserDefaults.standard
            if(swRememberMe.isOn)
            {
                //Store Data to User Default Storage
                userDefault.set(email, forKey: "userEmail")
                userDefault.set(pwd, forKey: "userPassword")
                
                print("Write Code to remember/store userId/Password")
            }
            else
            {
                print("Remove UserId/Password if previously remembered/stored")
                userDefault.removeObject(forKey: "userEmail")
                userDefault.removeObject(forKey: "userPassword")
            }
            
            //Go to NEXT screen
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let homeVC = sb.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
            homeVC.userEmail = email
            self.navigationController?.pushViewController(homeVC, animated: true)
            //self.present(homeVC, animated: true)
        }
        else
        {
            //Show Alert Here
            print("SHOW YOUR Alert Contoller with message User/Password Invalid")
        }
    }
}

