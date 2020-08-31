//
//  Cell.swift
//  DemoItune
//
//  Created by Quan Nguyen on 8/28/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import Foundation

let viewCountArray: [Int64] = [100000, 123045, 150876, 213532, 345678, 432123, 569690, 780907, 900789, 1130234, 5567405, 9678879]

struct Card: Hashable {
    var id: Int
    var name: String
    var image: String
    var viewCount: Int64? = viewCountArray.randomElement()
}
