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
        
    var fromImageView: UIImageView!
    var toImageView: UIImageView!
    
    var fromNameLabel: UILabel!
    var toNamelabel: UILabel!
    
    
    // MARK: - UIViewControllerAnimatedTransitioning methods
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
//        guard let fromVC = transitionContext.viewController(forKey: .from) as? FriendsTableViewController,
        guard let toVC = transitionContext.viewController(forKey: .to) as? FriendDetailViewController,
            let toView = transitionContext.view(forKey: .to) else { return }
        
        let toViewEndFrame = transitionContext.finalFrame(for: toVC)
        toView.frame = toViewEndFrame
        toView.alpha = 0.0
        transitionContext.containerView.addSubview(toView)
        
        
        let startImageViewFrame = transitionContext.containerView.convert(fromImageView.bounds, from: fromImageView)
        let endImageViewFrame = transitionContext.containerView.convert(toImageView.bounds, from: toImageView)
        let startNameLabelFrame = transitionContext.containerView.convert(fromNameLabel.bounds, from: fromNameLabel)
        let endNameLabelFrame = transitionContext.containerView.convert(toNamelabel.bounds, from: toNamelabel)
        
        let animatedImageView = UIImageView(frame: startImageViewFrame)
        animatedImageView.image = fromImageView.image
        animatedImageView.contentMode = fromImageView.contentMode
        
        let animatedNameLabel = UILabel(frame: startNameLabelFrame)
        animatedNameLabel.text = fromNameLabel.text
        animatedNameLabel.font = fromNameLabel.font
        
        
        fromImageView.alpha = 0.0
        fromNameLabel.alpha = 0.0
        toImageView.alpha = 0.0
        toNamelabel.alpha = 0.0
        
        transitionContext.containerView.addSubview(animatedImageView)
        transitionContext.containerView.addSubview(animatedNameLabel)
        
        let duration = transitionDuration(using: transitionContext)
        toView.layoutIfNeeded()
        UIView.animate(withDuration: duration, animations: {
            animatedImageView.frame = endImageViewFrame
            animatedNameLabel.frame = endNameLabelFrame
            // going to make the description label fade in
            toView.alpha = 1.0
        }) { (success) in
            self.fromImageView.alpha = 1.0
            self.fromNameLabel.alpha = 1.0
            self.toImageView.alpha = 1.0
            self.toNamelabel.alpha = 1.0
            animatedImageView.removeFromSuperview()
            animatedNameLabel.removeFromSuperview()
            
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        }
    }
    
}
