//
//  LayerAnimationViewController.swift
//  iOS-Animations
//
//  Created by race on 15/11/28.
//  Copyright © 2015年 alfredcc. All rights reserved.
//

import UIKit

class LayerAnimationViewController: UIViewController {
  // MARK: - IBOutlet

  @IBOutlet weak var animationView: UIView!
  // MARK: - Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()

  }

  // MARK: - Events Response
  
  @IBAction func position(sender: UIButton) {
    let moveToCenter = CABasicAnimation(keyPath: "position.x")
    moveToCenter.fromValue = -view.frame.width
    moveToCenter.toValue = animationView.center.x
    moveToCenter.duration = 1.0

    animationView.layer.addAnimation(moveToCenter, forKey: nil)
  }
  @IBAction func opacity(sender: UIButton) {
    let fadeOut = CABasicAnimation(keyPath: "opacity")
    fadeOut.fromValue = 1.0
    fadeOut.toValue = 0.0
    fadeOut.duration = 1.0

    animationView.layer.addAnimation(fadeOut, forKey: nil)
  }
  @IBAction func backgroundColor(sender: AnyObject) {
    let tint = CABasicAnimation(keyPath: "backgroundColor")
    tint.fromValue = UIColor.blueColor().CGColor
    tint.toValue = animationView.layer.backgroundColor
    tint.duration = 1.0

    animationView.layer.addAnimation(tint, forKey: nil)
  }

  // MARK: - Private Methods

}
