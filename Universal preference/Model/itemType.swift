//
//  itemType.swift
//  Universal preference
//
//  Created by Programming on 06.04.2019.
//  Copyright © 2019 gaudi. All rights reserved.
//

import UIKit

enum ItemType {
    case image(UIImage)
    case list(names: String, indexes: [Int])
    case text(String)
}
