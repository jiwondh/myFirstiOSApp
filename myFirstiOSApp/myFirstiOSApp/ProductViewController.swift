//
//  ProductViewController.swift
//  myFirstiOSApp
//
//  Created by oh jiwon on 2017. 11. 16..
//  Copyright © 2017년 oh jiwon. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var ProductNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ProductNameLabel.text = "1937 Desk Phone"
    }
}
