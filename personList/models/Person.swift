//
//  Person.swift
//  personList
//
//  Created by Кирилл Файфер on 08.09.2020.
//  Copyright © 2020 Кирилл Файфер. All rights reserved.
//

struct Person {
    var name: String
    var surname: String
    var email: String
    var phone: String
}

extension Person {
    static func getPersons() -> [Person] {
        let persons = DataManager.getManagers()
        var personsList: [Person] = []
        
        for _ in 1...9 {
            let person = Person(name: persons.names.randomElement() ?? "",
                                surname: persons.surnames.randomElement() ?? "",
                                email: persons.emails.randomElement() ?? "",
                                phone: persons.phones.randomElement() ?? "")
            
            personsList.append(person)
            
            persons.deleteElement(person.name, from: &persons.names)
            persons.deleteElement(person.surname, from: &persons.surnames)
            persons.deleteElement(person.phone, from: &persons.phones)
            persons.deleteElement(person.email, from: &persons.emails)
        }
        return personsList
    }
    
    
}

