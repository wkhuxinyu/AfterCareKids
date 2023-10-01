//
//  sitterOrderViewController.swift
//  AfterCareKids
//
//  Created by elz on 1/10/23.
//

import UIKit

class sitterOrderViewController: UIViewController {

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
    

    @IBAction func orderclick(_ sender: Any) {
        SceneDelegate.shared.toSitterOrderVIew()
    }
    @IBAction func chatclick(_ sender: Any) {
        SceneDelegate.shared.toSitterChatVIew()
    }
    @IBAction func accountclick(_ sender: UIButton) {
        SceneDelegate.shared.toSitterAccountVIew()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        dateformatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        if segue.identifier == "goToDetail2" {
            if let desVC = segue.destination as? OrderDetailViewController, let cell = sender as? UITableViewCell, let index = tableview.indexPath(for: cell){
                desVC.Code = dataArray[index.row]
                desVC.date=dateformatter.string(from: Date())
             
                desVC.parentname=loginname
                
                desVC.sittername="SitterName"
            }
        }
    }

}

extension sitterOrderViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let orderCell=tableView.dequeueReusableCell(withIdentifier: "Cell2", for:  indexPath) as! TableViewCell
        orderCell.setupData(name: dataArray[indexPath.row])
        return orderCell
        
    }
    
    
    
}
