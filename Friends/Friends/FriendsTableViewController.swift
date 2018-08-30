//
//  FriendsTableViewController.swift
//  Friends
//
//  Created by Samantha Gatt on 8/30/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // sets this table view controller's navigation controller's delegate to our custom delegate
        navigationController?.delegate = navigationControllerDelegate
    }
    
    
    // MARK: - Properties
    
    let navigationControllerDelegate = NavigationControllerDelegate()


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath)

        
        
        return cell
    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowFriendDetail" {
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
//            navigationControllerDelegate.indexPath = indexPath
            navigationControllerDelegate.sourceCell = tableView.cellForRow(at: indexPath)
        }
    }

}
