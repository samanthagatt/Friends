//
//  NavigationControllerDelegate.swift
//  Friends
//
//  Created by Samantha Gatt on 8/30/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class NavigationControllerDelegate: NSObject, UINavigationControllerDelegate {
    
    private func navigationController(_ navigationController: UINavigationController, interactionControllerFor animationController: UIViewControllerAnimatedTransitioning, from: UIView, to: UIView) -> UIViewControllerInteractiveTransitioning? {
        
        return nil
    }
    
    var sourceCell: UITableViewCell!
}
