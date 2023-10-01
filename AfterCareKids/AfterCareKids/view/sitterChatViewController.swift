//
//  sitterChatViewController.swift
//  AfterCareKids
//
//  Created by elz on 1/10/23.
//

import UIKit

class sitterChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
