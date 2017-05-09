//
//  ViewController.swift
//  Board-Example
//
//  Created by Meniny on 2017-05-09.
//  Copyright © 2017年 Meniny. All rights reserved.
//

import UIKit
import Board

class ViewController: UIViewController, BoardDelegate {
    func board(_ b: Board, didTriggerAction action: Board.Action, step: Int, total: Int) {
        switch action {
        case .skipped:
            print("Board: skipped the \(step) step")
        case .completed:
            print("Board: completed!")
        default:
            print("Board: Go to next step triggered! \(step)")
        }
    }
    
    var alertView: Board!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let s = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
        
        let s1 = Board.Page("Step1", s, "image")
        let s2 = Board.Page("Step2", s, "image")
        let s3 = Board.Page("Step3", s, "image")
        
        alertView = Board(pages: [s1, s2, s3])
        alertView.delegate = self
    }
    
    @IBAction func show(_ sender: UIButton) {
        /*
         
         TO CUSTOM Board:
         
         self.alertView.colorForAlertViewBackground = UIColor(red: 173/255, green: 206/255, blue: 183/255, alpha: 1.0)
         self.alertView.colorButtonText = UIColor.whiteColor()
         self.alertView.colorButtonBottomBackground = UIColor(red: 65/255, green: 165/255, blue: 115/255, alpha: 1.0)
         
         self.alertView.colorTitleLabel = UIColor.whiteColor()
         self.alertView.colorDescriptionLabel = UIColor.whiteColor()
         
         self.alertView.colorPageIndicator = UIColor.whiteColor()
         self.alertView.colorCurrentPageIndicator = UIColor(red: 65/255, green: 165/255, blue: 115/255, alpha: 1.0)
         
         self.alertView.percentageRatioHeight = 0.5
         self.alertView.percentageRatioWidth = 0.5
         
         */
        
        
        self.alertView.show()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

