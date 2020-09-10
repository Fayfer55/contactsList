//
//  FullInfoViewController.swift
//  personList
//
//  Created by Кирилл Файфер on 09.09.2020.
//  Copyright © 2020 Кирилл Файфер. All rights reserved.
//

import UIKit

class FullInfoViewController: UIViewController {

    @IBOutlet var personalPhoneLabel: UILabel!
    @IBOutlet var personalEmailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        personalPhoneLabel.text = "Phone number: \(person.phone)"
        personalEmailLabel.text = "Email: \(person.email)"
        navigationItem.title = "\(person.name) \(person.surname)"
    }
}
