//
//  sitterAccountViewController.swift
//  AfterCareKids
//
//  Created by elz on 1/10/23.
//

import UIKit

class sitterAccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

    @IBAction func logout(_ sender: UIButton) {
        if let loginViewController = storyboard?.instantiateViewController(withIdentifier: "ViewController") {
                    // 切换到登录界面
                    UIApplication.shared.keyWindow?.rootViewController = loginViewController
                }
        
    }
    @IBAction func orderclick(_ sender: Any) {
        SceneDelegate.shared.toSitterOrderVIew()
    }
    @IBAction func chatclick(_ sender: Any) {
        SceneDelegate.shared.toSitterChatVIew()
    }
    @IBAction func accountclick(_ sender: UIButton) {
        SceneDelegate.shared.toSitterAccountVIew()
    }


}
