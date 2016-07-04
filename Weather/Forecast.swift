//
//  Forecast.swift
//  Weather
//
//  Created by Michael Waterfall on 03/07/2016.
//  Copyright © 2016 Michael Waterfall. All rights reserved.
//

import Foundation
import CoreData

class Forecast: NSManagedObject {

}

extension Forecast {

    @NSManaged var date: NSDate?
    @NSManaged var json: String?

}

extension Forecast: FetchableManagedObject {

    static func entityName() -> String {
        return "Forecast"
    }

}
