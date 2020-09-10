//
//  PersonsListTableViewController.swift
//  personList
//
//  Created by Кирилл Файфер on 08.09.2020.
//  Copyright © 2020 Кирилл Файфер. All rights reserved.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    let persons = Person.getPersons()

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsList", for: indexPath)
        
        let person = persons[indexPath.row]
        cell.textLabel?.text = "\(person.name) \(person.surname)"
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? FullInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        infoVC.person = persons[indexPath.row]
        
//        guard let tabBarController = segue.destination as? UITabBarController else { return }
//        guard let secondNavigationC = tabBarController.viewControllers?.last as? UINavigationController else { return }
//        guard let personsTableVC = secondNavigationC.viewControllers.last as? PersonsFullInfoTableViewController else { return }

//        personsTableVC.persons = persons

    }
}
