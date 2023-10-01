//
//  OrderDetailViewController.swift
//  AfterCareKids
//
//  Created by elz on 27/09/23.
//

import UIKit

class OrderDetailViewController: UIViewController {

    @IBOutlet weak var orderCode: UILabel!
    @IBOutlet weak var orderDate: UILabel!
    @IBOutlet weak var orderParentName: UILabel!
    @IBOutlet weak var orderSitterName: UILabel!
    
    var Code: String?
    var date: String?
    var parentname: String?
    var sittername: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    //    view.backgroundColor = .red
        orderCode.text="Order Code : \(Code!)"
        orderDate.text="Order Date : \(date!)"
        orderParentName.text="Parent Name : \(parentname!)"
        orderSitterName.text="Sitter Name : \(sittername!)"
    
    }
    

}
