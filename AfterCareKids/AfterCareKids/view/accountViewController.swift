//
//  accountViewController.swift
//  AfterCareKids
//
//  Created by elz on 24/09/23.
//

import UIKit

class accountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("this is accountview")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func logout(_ sender: UIButton) {
        
        if let loginViewController = storyboard?.instantiateViewController(withIdentifier: "ViewController") {
                    // 切换到登录界面
                    UIApplication.shared.keyWindow?.rootViewController = loginViewController
                }
        
    }
    @IBAction func searchcilck(_ sender: Any) {
        SceneDelegate.shared.tohome()
    }
    
    @IBAction func orderclick(_ sender: Any) {
        SceneDelegate.shared.toOrder()
    }
    @IBAction func chatclick(_ sender: Any) {
        SceneDelegate.shared.toChat()
    }
    @IBAction func accountclick(_ sender: UIButton) {
        SceneDelegate.shared.toAccount()
    }
}
