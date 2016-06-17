//
//  CinOut+CoreDataProperties.swift
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

extension CinOut {

    @NSManaged var inTime: NSDate?
    @NSManaged var outTime: NSDate?
    @NSManaged var emp: Employee?

}
