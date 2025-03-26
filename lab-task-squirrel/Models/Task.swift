//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your hometown",
                 description: "Where were you born"),
            Task(title: "Your favorite vacation destination",
                 description: "Where do you like to go for vacation?"),
            Task(title: "Your  favorite picnic spot",
                 description: "Where do you want to go for a picnic?"),
            Task(title: "Your favorite hiking spot",
                 description: "Where do you want to be one with nature?")
        ]
    }
}
