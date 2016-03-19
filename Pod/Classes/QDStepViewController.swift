//
//  QBStepViewController.swift
//  CarCares
//
//  Created by Ahmad Raza on 3/17/16.
//  Copyright © 2016 Ahmad Raza. All rights reserved.
//

public class QDStepViewController: UIViewController {

    private var stepNumber: Int!
    
    override public func viewDidLoad() {
        super.viewDidLoad()

    }

    public func setStepNumber(position: Int) {
        self.stepNumber = position
    }

    override public func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        (self.navigationController as! QDNavigationController).pagerView.animation(stepNumber)
    }
    
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
