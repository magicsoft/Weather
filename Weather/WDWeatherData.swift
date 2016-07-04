//
//  WDWeatherData.swift
//  Weather
//
//  Created by Michael Waterfall on 04/07/2016.
//  Copyright © 2016 Michael Waterfall. All rights reserved.
//

import Foundation
import CoreData

class WDWeatherData {

    let context: NSManagedObjectContext
    let backgroundQueue: NSOperationQueue

    init(context: NSManagedObjectContext) {
        self.context = context
        self.backgroundQueue = NSOperationQueue()
    }

    /// Trigger the background fetch of new weather data.
    func fetchLatestWeatherData(location: WDWeatherLocation, completion: () -> Void) {

        // Start background import operation
        let importOperation = WDWeatherForecastDataImportOperation(context: context, location: location)
        importOperation.completionBlock = {
            completion()
        }
        backgroundQueue.addOperation(importOperation)

    }

}