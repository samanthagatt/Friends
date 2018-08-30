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
    var indexPath: IndexPath!
    
    
    // MARK: - UINavigationControllerDelegate method
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        guard let toVC = toVC as? FriendDetailViewController else { return nil }
        
        toVC.loadViewIfNeeded()
        
//        imageTransitionAnimator.indexPath = indexPath
        imageTransitionAnimator.fromImageView = sourceCell.imageView
        imageTransitionAnimator.fromNameLabel = sourceCell.textLabel
        imageTransitionAnimator.toImageView = toVC.imageView!
        imageTransitionAnimator.toNamelabel = toVC.nameLabel!
//        imageTransitionAnimator.toDescriptionLabel = toVC.descriptionLabel
        
        return imageTransitionAnimator
    }
}
