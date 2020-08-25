
import UIKit

class ViewController: UIViewController {

    var v: SettingsView {view as! SettingsView}

    override func loadView() {
        super.loadView()
        view = SettingsView()
        navigationController?.navigationBar.shadowImage = UIImage()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        v.datasource = fetchData()
    }
}

extension ViewController {
    func fetchData() -> [SettingSectionItem] {
        let setting1 = SettingCellItem(leftIcon: Images.bell, title: "Notifications")
        let section1 = SettingSectionItem(title: "App settings", cells: [setting1])
        let setting2 = SettingCellItem(leftIcon: Images.person, title: "My Account")
        let section2 = SettingSectionItem(title: "Profile", cells: [setting2])
        let setting3 = SettingCellItem(leftIcon: Images.hand, title: "Privacy Policy")
        let setting4 = SettingCellItem(leftIcon: Images.doc, title: "Terms of Service")
        let section3 = SettingSectionItem(title: "Legal information", cells: [setting3, setting4])

        return [section1, section2, section3]
    }
}
