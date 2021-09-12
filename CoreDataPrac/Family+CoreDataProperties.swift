//
//  Family+CoreDataProperties.swift
//  Family
//
//  Created by 이동건 on 2021/09/12.
//
//

import Foundation
import CoreData


extension Family {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Family> {
        return NSFetchRequest<Family>(entityName: "Family")
    }


}

extension Family : Identifiable {

}
