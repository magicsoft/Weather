//
//  WDWeatherLocationTests.swift
//  Weather
//
//  Created by Michael Waterfall on 04/07/2016.
//  Copyright © 2016 Michael Waterfall. All rights reserved.
//

import XCTest
@testable import Weather

class WDWeatherLocationTests: XCTestCase {

    func testLondonForecastRoute() {

        // Ensure that the london weather location values are correct
        let location = WDWeatherLocation.londonGB()
        XCTAssertEqual(location.cityName, "London")
        XCTAssertEqual(location.countryCode, "GB")

    }

}
