//
//  NavigationControllerDelegate.swift
//  Friends
//
//  Created by Samantha Gatt on 8/30/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class NavigationControllerDelegate: NSObject, UINavigationControllerDelegate {
    
    // MARK: - Properties
    
    var imageTransitionAnimator = ImageTransitionAnimator()
    var sourceCell: UITableViewCell!
    
    
    // MARK: - UINavigationControllerDelegate method
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        guard let toVC = toVC as? FriendDetailViewController else { return nil }
        
        imageTransitionAnimator.fromImage = sourceCell.imageView?.image
        imageTransitionAnimator.fromNameLabel = sourceCell.textLabel
        imageTransitionAnimator.toImage = toVC.imageView.image
        imageTransitionAnimator.toNamelabel = toVC.nameLabel
        imageTransitionAnimator.toDescriptionLabel = toVC.descriptionLabel
        
        return imageTransitionAnimator
    }
}
