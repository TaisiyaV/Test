
import UIKit

class CardsView: UIView {

    let buttonNo: UIButton = {
        let b = UIButton(type: .custom)
        b.setImage(R.image.no(), for: .normal)
        b.contentMode = .scaleAspectFill
        return b
    }()
    
    let buttonYes: UIButton = {
        let b = UIButton(type: .custom)
        b.setImage(R.image.yes(), for: .normal)
        b.contentMode = .scaleAspectFill
        return b
    }()
    
    
    let tableView = UITableView()
    
    let mainFotoCellId = "mainFoto"
    let aboutMeCellId = "aboutMe"
    let infoCellId = "info"
    let firstQuestionCellId = "firstQuestion"
    let firstFotoCellId = "firstFoto"
    let secondQuestionCellId = "secondQuestion"
    let thirdQuestionCellId = "thirdQuestion"
    let buttonCellId = "button"
    
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        addSubview(tableView)
        addSubview(buttonNo)
        addSubview(buttonYes)
        
        
        tableView.snp.makeConstraints { (m) in
            m.top.leading.trailing.bottom.equalToSuperview()
        }
        
        buttonNo.snp.makeConstraints { (m) in
            m.left.equalToSuperview().inset(16.0.h_relation)
            m.bottom.equalToSuperview().inset(32.0.v_relation)
            m.height.width.equalTo(66.0.h_relation)

        }
        
        buttonYes.snp.makeConstraints { (m) in
            m.right.equalToSuperview().inset(16.0.h_relation)
            m.bottom.equalToSuperview().inset(32.0.v_relation)
            m.height.width.equalTo(66.0.h_relation)
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
        
    }
     
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CardsView: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 9
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
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

