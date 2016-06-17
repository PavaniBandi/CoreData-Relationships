//
//  Employee+CoreDataProperties.swift
//  Sample
//
//  Created by Pavani on 6/16/16.
//  Copyright © 2016 Pavani. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Employee {

    @NSManaged var email: String?
    @NSManaged var img: NSData?
    @NSManaged var name: String?
    @NSManaged var password: String?
    @NSManaged var phone: String?
    @NSManaged var time: NSSet?

}
