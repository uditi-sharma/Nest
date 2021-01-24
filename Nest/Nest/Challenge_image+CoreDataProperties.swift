//
//  Challenge_image+CoreDataProperties.swift
//  Nest
//
//  Created by Uditi Sharma on 24/01/2021.
//
//

import Foundation
import CoreData


extension Challenge_image {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Challenge_image> {
        return NSFetchRequest<Challenge_image>(entityName: "Challenge_image")
    }

    @NSManaged public var image: Data?

}

extension Challenge_image : Identifiable {

}
