//
//  ContactViewController.swift
//  myFirstiOSApp
//
//  Created by oh jiwon on 2017. 11. 16..
//  Copyright © 2017년 oh jiwon. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(scrollView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSize(width: 375, height : 800)
    }
}
