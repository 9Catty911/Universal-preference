//
//  items.swift
//  Universal preference
//
//  Created by Programming on 20.04.2019.
//  Copyright © 2019 gaudi. All rights reserved.
//

import UIKit

typealias Items = [Item]

extension Array where Element == Item {
        static var all: Items {
        return [
            Item(data: .image(UIImage(named: "spring")!)),
            Item(data: .text("Однажды ранней весной ёжик пришёл к медвежонку и сказал")),
            Item(data: .list(names: "Весна", indexes: [-2,-1]))
        ]
    }
}
