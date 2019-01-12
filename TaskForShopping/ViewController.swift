//
//  ViewController.swift
//  TaskForShopping
//
//  Created by Santosh kumar on 1/11/19.
//  Copyright © 2019 Santosh kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var itemImgArray = ["Mobile","TV","Shoes","TShirt","Mobile","Blue Jeans","Wrist Watch","Lunch Box","Water Bottle","Salman TShirt","Pen Drive", "Leather Jacket"]
    var itemNameArray = ["Mobile","TV","Shoes","TShirt","Mobile","Blue Jeans","Wrist Watch","Lunch Box","Water Bottle","Salman TShirt","Pen Drive", "Leather Jacket"]
    var itemPriceArray = [9000,12000,8000,600,20000,950,2400,200,80,1400,850,2500]
    
    var itemDict = [String:Any]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemImgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ItemCollectionViewCell
        cell.itemImg.image = UIImage(named: "\(itemImgArray[indexPath.row])")
        cell.itemNameLbl.text = "\(itemNameArray[indexPath.row])"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        

        let currentCell = collectionView.cellForItem(at: indexPath) as! ItemCollectionViewCell
        
        let itemsDetailsVC = storyboard?.instantiateViewController(withIdentifier: "ItemDetailsViewController") as! ItemDetailsViewController
        itemDict.updateValue(currentCell.itemImg.image!, forKey: "ItemImg")
        itemDict.updateValue(currentCell.itemNameLbl.text!, forKey: "Name")
        itemDict.updateValue(itemPriceArray[indexPath.item], forKey: "ItemPrice")
        itemsDetailsVC.cartDict = itemDict
        
        self.navigationController?.pushViewController(itemsDetailsVC, animated: true)
        
    }
    
}

