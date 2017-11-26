//
//  ProductViewController.swift
//  myFirstiOSApp
//
//  Created by oh jiwon on 2017. 11. 16..
//  Copyright © 2017년 oh jiwon. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    var productName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productNameLabel.text = productName
        productImageView.image = #imageLiteral(resourceName: "phone-fullscreen3")
    }
    @IBAction func addToCartPressed(_ sender: Any) {
        print("Button tapped")
    }
}
