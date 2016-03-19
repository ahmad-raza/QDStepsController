//
//  CalendarViewController.swift
//  CarCares
//
//  Created by Ahmad Raza on 12/3/15.
//  Copyright © 2015 Ahmad Raza. All rights reserved.
//

import UIKit
import QDStepsController

class StepOneViewController: QDStepViewController {

    @IBOutlet weak var showOffersButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setStepNumber(0)
        
        let image : UIImage = UIImage(named: "logo.png")!
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 35))
        imageView.contentMode = .ScaleAspectFit
        imageView.image = image
        self.navigationItem.titleView = imageView
        
        
        showOffersButton.layer.cornerRadius = 5.0
        
    }
    
    override func viewDidLayoutSubviews() {
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func onShowOffersClicked(sender: UIButton) {
        performSegueWithIdentifier("segue1", sender: self)
    }
    
    func onBackPressed(object: AnyObject?) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
