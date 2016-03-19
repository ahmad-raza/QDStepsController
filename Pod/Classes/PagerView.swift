//
//  PagerView.swift
//  CarCares
//
//  Created by Ahmad Raza on 12/3/15.
//  Copyright © 2015 Ahmad Raza. All rights reserved.
//

import UIKit

public class PagerView: UIView {

    private let selectedViewWidth: CGFloat! = 22
    private let separaterWidth: CGFloat! = 30
    private let unselectedViewWidth: CGFloat = 10
    private let barHeight: CGFloat! = 40
    private let separaterHeight: CGFloat! = 3
    private let circleFillColor: UIColor! = UIColor(hexString: YELLOW_COLOR)
    private var totalPages: Int!
    
    private var selectedPage: Int!
    
    override public func awakeFromNib() {
        
        self.frame.size.height = barHeight
        
        self.selectedPage = 0
        totalPages = 0
    }
    
    func createViews(numberOfSteps: Int) {
        
        totalPages = numberOfSteps
        for i in 0...numberOfSteps-1 {
            let label = UILabel(frame: CGRectMake(0, 0, selectedViewWidth, selectedViewWidth))
            label.textAlignment = NSTextAlignment.Center
            label.text = (i+1).description
            label.textColor = UIColor.whiteColor()
            label.layer.backgroundColor = UIColor.grayColor().CGColor
            label.layer.cornerRadius = selectedViewWidth/2
            self.addSubview(label)
            
            if i < numberOfSteps - 1 {
                let view = UIView()
                view.frame.size.width = CGFloat(separaterWidth)
                view.frame.size.height = self.separaterHeight
                view.backgroundColor = UIColor.grayColor()
                self.addSubview(view)
            }
        }
        
        
        let viewCount = self.subviews.count
        let totalWidth = (CGFloat(numberOfSteps) * self.selectedViewWidth) + (CGFloat(numberOfSteps) - 1) * self.separaterWidth
        var x =  (self.frame.size.width / 2) - (totalWidth / 2)
        
        for i in 0...viewCount-1 {
            let view = self.subviews[i];
            if i % 2 == 1 {
                view.frame = CGRectMake(x - (selectedViewWidth - unselectedViewWidth), (barHeight - self.separaterHeight)/2, separaterWidth + unselectedViewWidth*2, self.separaterHeight);
                x += separaterWidth
            } else {
                if selectedPage * 2 == i {
                    view.frame = CGRectMake(x, (barHeight - selectedViewWidth)/2, selectedViewWidth, selectedViewWidth);
                    view.layer.backgroundColor = circleFillColor.CGColor
                } else {
                    view.frame = CGRectMake(x, (barHeight - unselectedViewWidth)/2, unselectedViewWidth, unselectedViewWidth);
                    
                    view.layer.cornerRadius = self.unselectedViewWidth/2
                    (view as! UILabel).text = ""
                }
                
                view.layer.zPosition = 1
                x += selectedViewWidth
            }
        }
        
    }
    
    func animation(inPage: Int) {
        
        if inPage == selectedPage || inPage < 0 || inPage >= totalPages {
            return
        }
        makeOutAnimation(inPage)
        makeInAnimation(inPage)
        updateSeparatorColors(inPage)
    }
    
    private func makeOutAnimation(page: Int) {
        let view = self.subviews[self.selectedPage*2] as! UILabel
        view.hidden = true
        view.frame.origin.y += (self.selectedViewWidth - self.unselectedViewWidth)/2
        view.frame.origin.x += (self.selectedViewWidth - self.unselectedViewWidth)/2
        
        view.frame.size.height = self.unselectedViewWidth
        view.frame.size.width = self.unselectedViewWidth
        view.layer.cornerRadius = self.unselectedViewWidth/2
        view.text = ""
        if page < self.selectedPage {
            view.layer.backgroundColor = UIColor.grayColor().CGColor
        }
        view.hidden = false
    }
    
    private func makeInAnimation(page: Int) {
        let view = self.subviews[page*2] as! UILabel
        view.hidden = true
        view.frame.origin.y -= (self.selectedViewWidth - self.unselectedViewWidth)/2
        view.frame.origin.x -= (self.selectedViewWidth - self.unselectedViewWidth)/2
        
        view.frame.size.height = self.selectedViewWidth
        view.frame.size.width = self.selectedViewWidth
        view.layer.cornerRadius = self.selectedViewWidth/2
        view.text = (page + 1).description
        view.layer.backgroundColor = circleFillColor.CGColor
        view.hidden = false
        self.selectedPage = page
    }
    
    private func updateSeparatorColors(page: Int) {
        for i in 0...self.totalPages+1 {
            if i%2 == 1 {
                let view = self.subviews[i] as UIView
                if i < page * 2 {
                    view.backgroundColor = circleFillColor
                } else {
                    view.backgroundColor = UIColor.grayColor()
                }
            }
        }
    }
}
