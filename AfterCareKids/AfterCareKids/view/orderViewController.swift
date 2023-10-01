//
//  orderViewController.swift
//  AfterCareKids
//
//  Created by elz on 24/09/23.
//

import UIKit
import Foundation

class orderViewController: UIViewController {
 
    @IBOutlet weak var tableview: UITableView!
    var dataArray:[String]=[]
    
    let dateformatter = DateFormatter()
    
    
    

    
    
    var loginname:String = ""
    
    let loginer = ViewController()
    let mod=QueryService()
    override func viewDidLoad() {
        super.viewDidLoad()
    //    performSegue(withIdentifier: "goToLogin", sender: nil)

        print("this is orderview")
        for index in 0...3 {
            dataArray.append("orderId:\(index)")
            
        }
        tableview.delegate=self
        tableview.dataSource=self
        
        tableview.reloadData()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        dateformatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        if segue.identifier == "goToDetail" {
            if let desVC = segue.destination as? OrderDetailViewController, let cell = sender as? UITableViewCell, let index = tableview.indexPath(for: cell){
                desVC.Code = dataArray[index.row]
                desVC.date=dateformatter.string(from: Date())
             
                desVC.parentname=loginname
                
                desVC.sittername="SitterName"
            }
        }
    }
}

extension orderViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let orderCell=tableView.dequeueReusableCell(withIdentifier: "Cell", for:  indexPath) as! TableViewCell
        orderCell.setupData(name: dataArray[indexPath.row])
        return orderCell
        
    }
    
    
    
}
