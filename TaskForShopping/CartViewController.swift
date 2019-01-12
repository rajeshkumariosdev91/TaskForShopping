//
//  CartViewController.swift
//  TaskForShopping
//
//  Created by Santosh kumar on 1/11/19.
//  Copyright © 2019 Santosh kumar. All rights reserved.
//

import UIKit

class CartViewController: UIViewController {

    var sharedInstance = Singleton.shared
    var totalAmount:Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func proceedToPayAction(_ sender: Any) {
        
    }
}

extension CartViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return sharedInstance.cartArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartTableViewCell
        cell.cartImg.image = sharedInstance.cartArray[indexPath.row]["ItemImg"] as? UIImage
        
        totalAmount = Int("\(sharedInstance.cartArray[indexPath.row]["ItemPrice"]!)")! + 100
        
        cell.itemLbl.text = "\(totalAmount!)"
        
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

}
