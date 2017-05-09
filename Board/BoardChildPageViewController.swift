//
//  BoardChildPageViewController.swift
//  Meniny
//
//  Created by Meniny on 26/09/2016.
//  Copyright © 2016 Meniny. All rights reserved.
//

import UIKit

open class BoardChildPageViewController: UIViewController {
    
    var pageIndex: Int!
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var labelMainTitle: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    
    override open func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
