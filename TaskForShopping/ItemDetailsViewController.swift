//
//  ItemDetailsViewController.swift
//  TaskForShopping
//
//  Created by Santosh kumar on 1/11/19.
//  Copyright © 2019 Santosh kumar. All rights reserved.
//

import UIKit

class ItemDetailsViewController: UIViewController {

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemDisplayImg: UIImageView!
    @IBOutlet weak var itemPriceLbl: UILabel!
    @IBOutlet weak var addToCartBtn: UIButton!
    @IBOutlet weak var buyBtn: UIButton!
    
    var sharedInstance = Singleton.shared
    var cartDict = [String:Any]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemName.text = "\(cartDict["Name"]!)"
        itemDisplayImg.image = cartDict["ItemImg"] as? UIImage
        itemPriceLbl.text = "\(cartDict["ItemPrice"]!)"
        
    }
    
    @IBAction func addToCartAction(_ sender: Any) {
        
        altertController(title: "Service Tax", msg: "Extra 100 will be added to your Price")
        
    }
    
    @IBAction func buyAction(_ sender: Any) {
        
        let cartVC = storyboard?.instantiateViewController(withIdentifier: "CartViewController") as! CartViewController
        self.navigationController?.pushViewController(cartVC, animated: true)
    }
    

}

extension ItemDetailsViewController{

    func altertController(title:String, msg:String)
    {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (complete) in
            self.sharedInstance.cartArray.append(self.cartDict)
            let cartVC = self.storyboard?.instantiateViewController(withIdentifier: "CartViewController") as! CartViewController
            self.navigationController?.pushViewController(cartVC, animated: true)
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}
