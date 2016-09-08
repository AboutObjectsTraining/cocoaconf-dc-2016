//
//  main.swift
//  swift-tool
//
//  Created by Jonathan on 6/24/15.
//  Copyright (c) 2015 About Objects. All rights reserved.
//

import Foundation

let digits = "1,234,567"

if let numericValue = digits.sum() {
    print("Numeric value is \(numericValue)")
} else {
    print("Unable to parse a numeric value from \(digits)")
}

