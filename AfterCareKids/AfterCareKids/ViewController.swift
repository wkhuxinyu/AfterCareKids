//
//  ViewController.swift
//  AfterCareKids
//
//  Created by elz on 24/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hint: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
   
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginclick(_ sender: Any) {
        let name = username.text
        
        let pwd=password.text
    
        
        if name!.isEmpty {
            hint.text="Please input username!"
            
        } else if pwd=="1" && name=="a" {
            SceneDelegate.shared.tohome()
        } else if pwd=="1" && name=="s" {
            SceneDelegate.shared.toSitterOrderVIew()
            
        }else {
            hint.text="Username or Password incorrect!"
            
        }
            
            
        
    }
    
}

