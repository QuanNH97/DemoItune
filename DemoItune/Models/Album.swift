//
//  Album.swift
//  DemoItune
//
//  Created by Quan Nguyen on 8/31/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import Foundation

struct Album: Hashable {
    var id: Int
    var name: String
    var image: String
    var viewCount: Int64? = Constant.viewCountArray.randomElement()
}
