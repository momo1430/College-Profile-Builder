//
//  College.swift
//  College Profile Builder
//
//  Created by Shane Olson on 7/5/17.
//  Copyright © 2017 Shane Olson. All rights reserved.
//

import UIKit

class College: NSObject
{
    var name = String()
    var location = String()
    var enrollment = Int()
    var website = String()
    var image = Data()
    
    convenience init(name: String, location: String, enrollment: Int, website: String, image: Data)
    {
        self.init()
        self.name = name
        self.location = location
        self.enrollment = enrollment
        self.website = website
        self.image = image
    }
}
