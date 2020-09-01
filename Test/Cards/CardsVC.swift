

import UIKit
import SnapKit

struct InfoCellItem {
    let icon: UIImage!
    let title: String
}


class CardsVC: UIViewController {
    
    var dataInfo: [InfoCellItem] = []
    
    let tableView = UITableView()
    
    let mainFotoCellId = "mainFoto"
    let aboutMeCellId = "aboutMe"
    let infoCellId = "info"
    let firstQuestionCellId = "firstQuestion"
    let firstFotoCellId = "firstFoto"
    let secondQuestionCellId = "secondQuestion"
    let thirdQuestionCellId = "thirdQuestion"
    let buttonCellId = "button"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
        
        view.addSubview(tableView)
        
        
        tableView.snp.makeConstraints { (m) in
            m.top.leading.trailing.bottom.equalToSuperview()
        }
        
        tableView.delegate = self
        tableView.dataSource = self

        
        tableView.register(MainFotoCell.self, forCellReuseIdentifier: mainFotoCellId)
        tableView.register(AboutMeCell.self, forCellReuseIdentifier: aboutMeCellId)
        tableView.register(InfoCell.self, forCellReuseIdentifier: infoCellId)
        tableView.register(FirstQuestionCell.self, forCellReuseIdentifier: firstQuestionCellId)
        tableView.register(FirstFotoCell.self, forCellReuseIdentifier: firstFotoCellId)
        tableView.register(SecondQuestionCell.self, forCellReuseIdentifier: secondQuestionCellId)
        tableView.register(ThirdQuestionCell.self, forCellReuseIdentifier: thirdQuestionCellId)
        tableView.register(ButtonCell.self, forCellReuseIdentifier: buttonCellId)
        
        
        tableView.backgroundView = UIImageView(image: R.image.likes_bg())
        tableView.separatorStyle = .none
        tableView.tableFooterView = UIView()
        
        dataInfo = dataRetrieval()

    
    }
    
    func setupNavBar () {
        
        let logo = UIBarButtonItem(image: R.image.logo(), style: .done, target: self, action: nil)
        navigationItem.leftBarButtonItem = logo
        navigationItem.leftBarButtonItem?.tintColor = .black
        
        let filter = UIBarButtonItem(image: R.image.button(), style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItem = filter
        navigationItem.rightBarButtonItem?.tintColor = .black
        
    }
    
    func dataRetrieval () -> [InfoCellItem] {
        let info1 = InfoCellItem(icon: R.image.location(), title: "City")
        let info2 = InfoCellItem(icon: R.image.height(), title: "6’5” Feet Tall")
        let info3 = InfoCellItem(icon: R.image.relationships(), title: "Signle")
        let info4 = InfoCellItem(icon: R.image.diploma1(), title: "Houston University, 2012")
        let info5 = InfoCellItem(icon: R.image.languages(), title: "English, Japanese")
        let info6 = InfoCellItem(icon: R.image.work(), title: "KickPick, Salesman")
        let info7 = InfoCellItem(icon: R.image.live(), title: "Living with parents")
        
        return [info1, info2, info3, info4, info5, info6, info7]
    }
    

}


extension CardsVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 9
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 2 {
            return dataInfo.count
        } else {
            return 1
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: mainFotoCellId) as! MainFotoCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: aboutMeCellId) as! AboutMeCell
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: infoCellId) as! InfoCell
            let info = dataInfo[indexPath.row]
            cell.setInfo(info: info)
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: firstQuestionCellId) as! FirstQuestionCell
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: firstFotoCellId) as! FirstFotoCell
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: secondQuestionCellId) as! SecondQuestionCell
            return cell
        case 6:
            let cell = tableView.dequeueReusableCell(withIdentifier: firstFotoCellId) as! FirstFotoCell
            return cell
        case 7:
            let cell = tableView.dequeueReusableCell(withIdentifier: thirdQuestionCellId) as! ThirdQuestionCell
            return cell
        case 8:
            let cell = tableView.dequeueReusableCell(withIdentifier: buttonCellId) as! ButtonCell
            return cell
        default:
            let cell = UITableViewCell()
            return cell
        }
        
    }
    
}
