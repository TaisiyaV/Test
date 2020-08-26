/*
import UIKit
import SnapKit

class SettingsView: UIView {

    var datasource: [SettingSectionItem] = []

    var tableView = UITableView(frame: .zero, style: .grouped)

    init() {
        super.init(frame: .zero)

        addSubview(tableView)

        tableView.dataSource = self
        tableView.delegate = self

        tableView.register(SettingsTableViewCell.self, forCellReuseIdentifier: "cell")
 //       tableView.register(SectionHeader.self, forCellReuseIdentifier: "header")

        tableView.snp.makeConstraints { (m) in
            m.top.equalTo(safeAreaLayoutGuide.snp.top)
            m.left.right.bottom.equalToSuperview()
        }

        tableView.backgroundColor = R.color.settings_bg()
//            UIColor(named: "settings_bg")
        tableView.separatorStyle = .none

        tableView.tableFooterView = UIView()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
extension SettingsView: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return datasource.count
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 53
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource[section].cells.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = datasource[section]
        return section.title
    }

//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//        let header = tableView.dequeueReusableCell(withIdentifier: "header") as! SectionHeader
//
//        for _ in datasource {
//            header.sectionLabel.text = datasource[section].title
//        }
//
//        return header
//    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 66))

        let label = SectionView()
        
        label.frame = CGRect.init(x: 5, y: 5, width: headerView.frame.width-10, height: headerView.frame.height-10)
        
        for _ in datasource {
            label.sectionLabel.text = datasource[section].title
        }

        headerView.addSubview(label)

        return headerView
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SettingsTableViewCell
        let setting = datasource[indexPath.section].cells[indexPath.row]
        cell.set(setting: setting)
        return cell
    }
}
*/
