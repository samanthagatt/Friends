//
//  ImageTransitionAnimator.swift
//  Friends
//
//  Created by Samantha Gatt on 8/30/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class ImageTransitionAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    // MARK: - Properties
    
    var fromImage: UIImage!
    var toImage: UIImage!
    
    var fromNameLabel: UILabel!
    var toNamelabel: UILabel!
    
    var toDescriptionLabel: UILabel!
    
    
    // MARK: - UIViewControllerAnimatedTransitioning methods
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
    }
    
}
