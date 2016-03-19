//
//  HomeViewController.swift
//  
//
//  Created by Ahmad Raza on 3/17/16.
//  Copyright © 2016 Ahmad Raza. All rights reserved.
//

import UIKit
import QDStepsController

class HomeViewController: QDNavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setStepsCount(4)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
