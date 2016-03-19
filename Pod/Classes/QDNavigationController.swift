//
//  QDNavigationController.swift
//  CarCares
//
//  Created by Ahmad Raza on 12/1/15.
//  Copyright © 2015 Ahmad Raza. All rights reserved.
//

public class QDNavigationController: UINavigationController {

    var pagerView: PagerView!
    private var totalSteps: Int!
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        self.navigationBar.barStyle = UIBarStyle.Black
        let bundle = NSBundle(forClass: PagerView.classForCoder())
//        let bundle = NSBundle(path: bundlePath)!
//
        pagerView = bundle.loadNibNamed("PagerBar", owner: self, options: nil)[0] as! PagerView
        
        pagerView.frame.origin.y = self.navigationBar.frame.size.height + self.navigationBar.frame.origin.y + UIApplication.sharedApplication().statusBarFrame.size.height
        pagerView.frame.size.width = self.navigationBar.frame.size.width
        
    }
    
    public func setStepsCount(count: Int) {
        totalSteps = count
    }
    
    override public func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        pagerView.createViews(totalSteps)
        
        UIApplication.sharedApplication().keyWindow?.addSubview(pagerView)
    }
    
    override public func viewWillDisappear(animated: Bool) {
        pagerView.removeFromSuperview()
    }
    
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
