//
//  Person+CoreDataProperties.swift
//  Person
//
//  Created by 이동건 on 2021/09/12.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var age: Int64
    @NSManaged public var gender: String?
    @NSManaged public var name: String?

}

extension Person : Identifiable {

}
