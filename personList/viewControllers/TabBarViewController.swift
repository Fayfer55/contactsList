//
//  TabBarViewController.swift
//  personList
//
//  Created by Кирилл Файфер on 03.12.2020.
//  Copyright © 2020 Кирилл Файфер. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    let persons = Person.getManagers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers(with: persons)
    }
    
    // MARK: - Navigation
    private func setupViewControllers(with persons: [Person]) {
        let contactListVC = viewControllers?.first as! PersonsListTableViewController
        let sectionVC = viewControllers?.last as! PersonsFullInfoTableViewController
        
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
}
