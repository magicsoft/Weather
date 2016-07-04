//
//  DictionaryExtension.swift
//  Weather
//
//  Created by Michael Waterfall on 03/07/2016.
//  Copyright © 2016 Michael Waterfall. All rights reserved.
//

import Foundation

func + <K, V> (left: Dictionary<K, V>, right: Dictionary<K, V>) -> Dictionary<K, V> {
    var map = Dictionary<K, V>()
    for (k, v) in left {
        map[k] = v
    }
    for (k, v) in right {
        map[k] = v
    }
    return map
}
