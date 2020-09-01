
import UIKit

struct SettingSectionItem {
    let title: String
    let cells: [SettingCellItem]
}

struct SettingCellItem {
    let leftIcon: UIImage
    let title: String
    let rightIcon = R.image.chevronRight() //UIImage(named: "chevron.right")
}
