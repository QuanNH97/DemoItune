//
//  Formatter.swift
//  DemoItune
//
//  Created by Quan Nguyen on 8/30/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import Foundation

class Formatter {
    func formatNumber(number: Int64) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.groupingSeparator = "."
        return numberFormatter.string(from: NSNumber(value: number)) ?? "0"
    }
}
