//
//  ProductsTableViewController.swift
//  myFirstiOSApp
//
//  Created by oh jiwon on 2017. 11. 21..
//  Copyright © 2017년 oh jiwon. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNames = ["1907 Wall Set", "1921 Dial Phone",
                        "1937 Desk Set", "1984 Motorola Portable"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let pNames = productNames{
            return pNames.count
        }
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
        let productName = productNames?[indexPath.row]
        
        if let pName = productName{
            cell.textLabel?.text = pName
        }
        
        cell.imageView?.image = UIImage(named: "image-cell1")
        
        return  cell
    }
    
    override open func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destination as? ProductViewController
            productVC?.productName = "Really old phone"
        }
    }
}
