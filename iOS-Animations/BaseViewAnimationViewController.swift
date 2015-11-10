//
//  BaseViewAnimationViewController.swift
//  iOS-Animations
//
//  Created by race on 15/11/8.
//  Copyright © 2015年 alfredcc. All rights reserved.
//

import UIKit

class BaseViewAnimationViewController: UIViewController {
    
    var animationView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add a animation view
        let frame = CGRect(x: 20.0, y: view.bounds.height/4, width: 40.0, height: 40.0)
        animationView.frame = frame
        animationView.backgroundColor = UIColor.blueColor()
        view.addSubview(animationView)
        
        
    }
    
    // base aniamtion with duration
    @IBAction func annimationWithDuration(sender: UIButton) {
        UIView.animateWithDuration(1.0, delay: 0.0, options: [.CurveEaseInOut], animations: { () -> Void in
            self.animationView.center.x += self.view.bounds.width
            self.animationView.backgroundColor = UIColor.blackColor()
            self.animationView.alpha = 0.5
            }, completion: {_ in
                self.animationView.center.x -= self.view.bounds.width
                self.animationView.backgroundColor = UIColor.blueColor()
                self.animationView.alpha = 1.0
        })
    }
    
    // base animation with Sping
    // if the Damping is more close to zero, the bounce is more powerful
    @IBAction func annimationWithSpring(sender: UIButton) {
        UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [], animations: { () -> Void in
            self.animationView.center.x += self.view.bounds.width / 2
            }) { (_: Bool) -> Void in
                self.animationView.center.x -= self.view.bounds.width / 2
        }
    }
  
  @IBAction func transitionAnimation(sender: AnyObject) {
    let newView = UIView(frame: CGRect(x: 20.0, y: view.bounds.height/4, width: 100.0, height: 100.0))
    newView.center = view.center
    newView.backgroundColor = UIColor.darkGrayColor()
    UIView.transitionWithView(newView, duration: 1.0, options: [.CurveEaseOut, .TransitionCurlDown], animations: { () -> Void in
      self.view.addSubview(newView)
      }, completion: { _ in
        newView.removeFromSuperview()
    })
  }
  
    
}
