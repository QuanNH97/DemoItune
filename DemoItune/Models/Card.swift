//
//  Cell.swift
//  DemoItune
//
//  Created by Quan Nguyen on 8/28/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import Foundation

struct Card: Hashable {
    var id: Int
    var name: String
    var image: String
    var viewCount: Int64? = Constant().viewCountArray.randomElement()
}
