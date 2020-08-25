//
//  SettingCellItem.swift
//  Test
//
//  Created by tasya on 24.08.2020.
//  Copyright © 2020 Taisiya V. All rights reserved.
//

import UIKit

struct SettingSectionItem {
    let title: String
    let cells: [SettingCellItem]
}

struct SettingCellItem {
    let leftIcon: UIImage
    let title: String
    let rightIcon = UIImage(systemName: "chevron.right")
}
