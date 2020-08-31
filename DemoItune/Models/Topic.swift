//
//  Topic.swift
//  DemoItune
//
//  Created by Quan Nguyen on 8/28/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import Foundation

struct Topic {
    var id: Int
    var title: String
    var type: TopicType
    var cards: [Card]
}

enum TopicType {
    case album
    case artist
}
