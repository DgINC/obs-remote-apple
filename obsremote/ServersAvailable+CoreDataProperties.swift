//
//  ServersAvailable+CoreDataProperties.swift
//  obsremote
//
//  Created by Dg on 12.12.2020.
//
//

import Foundation
import CoreData


extension ServersAvailable {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ServersAvailable> {
        return NSFetchRequest<ServersAvailable>(entityName: "ServersAvailable")
    }

    @NSManaged public var ip: String?
    @NSManaged public var port: Int64
    @NSManaged public var auth: Bool

}

extension ServersAvailable : Identifiable {

}
