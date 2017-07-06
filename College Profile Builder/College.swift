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
    var college = String()
    var location = String()
    var enrollment = Int()
    var image = Data()
    
    convenience init(college: String, location: String, population: Int, image: Data)
    {
        self.init()
        self.college = college
        self.location = location
        self.enrollment = enrollment
        self.image = image
    }
}
