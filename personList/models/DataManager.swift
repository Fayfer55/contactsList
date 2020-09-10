//
//  DataManager.swift
//  personList
//
//  Created by Кирилл Файфер on 08.09.2020.
//  Copyright © 2020 Кирилл Файфер. All rights reserved.
//

class DataManager {
    var names: [String]
    var surnames: [String]
    var emails: [String]
    var phones: [String]
    
    init(names: [String],
         surnames: [String],
         emails: [String],
         phones: [String]) {
        self.names = names
        self.surnames = surnames
        self.emails = emails
        self.phones = phones
    }
}

extension DataManager {
    static func getManagers() -> DataManager {
        return DataManager(names: ["Kirill", "Ivan", "Alexei", "Volodya", "Kate",
                                   "Max", "Tim", "Rick", "Morty"],
                           surnames: ["Cook", "Geist", "Messi", "Malkin", "Trump",
                                      "West", "Gambino", "Sanchez", "Smith"],
                           emails: ["qwe@mail.ru","111@mail.ru","123@mail.ru",
                                    "zxc@mail.ru","wasd@mail.ru","qwe@mail.ru",
                                    "987@mail.ru","twitch@mail.ru","555@mail.ru"],
                           phones: ["+7-111-111-11-11","+7-222-222-22-22","+7-333-333-33-33",
                                    "+7-444-444-44-44","+7-555-555-55-55","+7-666-666-66-66",
                                    "+7-777-777-77-77","+7-888-888-88-88","+7-999-999-99-99",])
    }
    
    func deleteElement(_ element: String,from array: inout [String]) {
        for string in array {
            if string == element {
                let index = array.firstIndex(of: string)
                array.remove(at: index ?? 0)
            }
        }
    }
}
