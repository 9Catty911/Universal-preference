//
//  item.swift
//  Universal preference
//
//  Created by Programming on 06.04.2019.
//  Copyright © 2019 gaudi. All rights reserved.
//

import UIKit

struct Item {
    let data: ItemType
    
    static func loadSample() -> [Item] {
        return [
            Item(data: .image(UIImage(named: "spring")!)),
            Item(data: .text("Однажды ранней весной...")),
            Item(data: .list(names: "Весна", indexes: [-2,-1]))
        ]
    }
}
