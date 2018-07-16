//
//  Assignment.swift
//  16
//
//  Created by Jason Dong on 7/16/18.
//  Copyright © 2018 Jason Dong. All rights reserved.
//

import UIKit

class Assignment: Codable {

    var name: String
    var dueDate: String
    var subject: String
    var description: String
    
    init(name: String, dueDate: String, subject: String, description: String) {
        self.name = name
        self.dueDate = dueDate
        self.subject = subject
        self.description = description
    }
}
