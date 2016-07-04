//
//  WDWeatherLocation.swift
//  Weather
//
//  Created by Michael Waterfall on 04/07/2016.
//  Copyright © 2016 Michael Waterfall. All rights reserved.
//

import Foundation

struct WDWeatherLocation {

    let cityName: String
    let countryCode: String

    /// Returns the location the user is currently at
    static func currentLocation() -> WDWeatherLocation {
        // Currently default to London until it's
        return londonGB()
    }

    /// Returns the location used for testing
    static func londonGB() -> WDWeatherLocation {
        return WDWeatherLocation(cityName: "London", countryCode: "GB")
    }

}
