//
//  DetailViewController.swift
//  AfterCareKids
//
//  Created by elz on 26/09/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    // 用于接收传递的查询结果标识符
    var detailText: String = ""

    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("detailview!")
        print(detailText)
        // 更新界面元素来显示详细信息
        nameLabel.text = detailText

    }

}
