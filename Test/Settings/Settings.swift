
import UIKit

@available(iOS 13.0, *)
struct SettingSectionItem {
    let title: String
    let cells: [SettingCellItem]
}

@available(iOS 13.0, *)
struct SettingCellItem {
    let leftIcon: UIImage
    let title: String
    let rightIcon = UIImage(systemName: "chevron.right")
}
