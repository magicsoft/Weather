//
//  NSDateExtension.swift
//  Weather
//
//  Created by Michael Waterfall on 04/07/2016.
//  Copyright © 2016 Michael Waterfall. All rights reserved.
//

import Foundation

public func <(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == .OrderedAscending
}

public func >(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == .OrderedDescending
}

public func <=(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) != .OrderedDescending
}

public func >=(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) != .OrderedAscending
}

public func -(lhs: NSDate, rhs: NSDate) -> NSTimeInterval {
    return lhs.timeIntervalSinceDate(rhs)
}

public func ==(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == .OrderedSame
}
