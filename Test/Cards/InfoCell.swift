
import UIKit


class InfoCell: UITableViewCell {

    let stack = UIStackView()
    let info = InfoView()
    
    var dataInfo: [InfoCellItem] = []


    let backView: UIView = {
        let v = UIView()
        v.layer.cornerRadius = 18
        v.backgroundColor = .white
        return v
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        stack.addSubview(backView)
        stack.addSubview(info)
        
        addSubview(stack)
        backgroundColor = .none
        
        stack.snp.makeConstraints { (m) in
            m.top.leading.trailing.bottom.equalToSuperview()
        }
        
        backView.snp.makeConstraints { (m) in
            m.top.leading.trailing.bottom.equalToSuperview()
        }
        
        dataInfo = dataRetrieval()
        receivingViewInfo()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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

    func receivingViewInfo() {
            
        for (i, _) in dataInfo.enumerated() {
            let view = InfoView()
            view.icon.image = dataInfo[i].icon
            view.label.text = dataInfo[i].title
            stack.addArrangedSubview(view)
        }
    }
    
}


