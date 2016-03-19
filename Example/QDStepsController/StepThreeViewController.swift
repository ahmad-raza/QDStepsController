//
//  DetailsViewController.swift
//  CarCares
//
//  Created by Ahmad Raza on 12/3/15.
//  Copyright © 2015 Ahmad Raza. All rights reserved.
//

import UIKit
import QDStepsController

class StepThreeViewController: QDStepViewController {

    @IBOutlet weak var enterDetailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStepNumber(2)
        
        let image : UIImage = UIImage(named: "logo.png")!
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 35))
        imageView.contentMode = .ScaleAspectFit
        imageView.image = image
        self.navigationItem.titleView = imageView
        
        
        enterDetailButton.layer.cornerRadius = 5.0
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func onSubmitButtonClicked(sender: AnyObject) {
        
    }
}
