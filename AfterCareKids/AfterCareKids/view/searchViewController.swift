//
//  searchViewController.swift
//  AfterCareKids
//
//  Created by elz on 24/09/23.
//

import UIKit


protocol QueryView: AnyObject {
    func displayResult(results: [String])
}
class searchViewController: UIViewController, QueryView {

    
    // declear a content for put result data in
    var dataArray:[String]=[]
    var window: UIWindow?
    private var presenter: QueryPresenter!
    
    //search result
    @IBOutlet weak var tableview: UITableView!
    
    //input search key work
    @IBOutlet weak var queryTextField: UITextField!
    
    // Button
    @IBAction func queryButtonTapped(_ sender: UIButton) {
        if let queryText = queryTextField.text {
                    presenter.performQuery(text: queryText) }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        print("this is homeview")
        let model = QueryService()
                presenter = QueryPresenter(view: self, model: model)

    }
    
    func displayResult(results: [String]) {
        dataArray.removeAll()
 

        for result in results {
        dataArray.append(result)
 
        }
    
        tableview.delegate=self
        tableview.dataSource=self
        tableview.reloadData()
        

    }

    //Bottom navigation bar
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

extension searchViewController:UITableViewDataSource,UITableViewDelegate{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "Cell", for:  indexPath)
        cell.textLabel?.text=dataArray[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedResult = dataArray[indexPath.row]
        navigateToDetailPage(withText: selectedResult)

        //跳转方法，这个能跳转到详情页，但是带不过去数据
      //  SceneDelegate.shared.toDetailView()
        
        
        print(selectedResult)
    }
    func navigateToDetailPage(withText text: String) {

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            
            //这个能带着数据，但是跳转不过去
            detailVC.detailText = text
           // print (navigationController)
            navigationController?.pushViewController(detailVC, animated: true)
          
        }

    }
    
}
