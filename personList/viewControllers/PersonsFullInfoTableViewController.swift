//
//  PersonsFullInfoTableViewController.swift
//  personList
//
//  Created by Кирилл Файфер on 08.09.2020.
//  Copyright © 2020 Кирилл Файфер. All rights reserved.
//

import UIKit

class PersonsFullInfoTableViewController: UITableViewController {
//    var persons: [Person]!
    let persons = Person.getPersons()

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        let person = persons[section]
         title = "\(person.name) \(person.surname)"
        
        return title
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullInfo", for: indexPath)
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.phone
        
        return cell
    }
    
}
