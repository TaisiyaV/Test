
import UIKit

class ButtonCell: UITableViewCell {
       
    let label: UILabel = {
        let l = UILabel()
        l.text = "Complain"
        l.font = UIFont.systemFont(ofSize: 12.0.v_relation.float, weight: .semibold)
        l.textColor = R.color.textColor()
        return l
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
          super.init(style: style, reuseIdentifier: reuseIdentifier)

        addSubview(label)
        backgroundColor = .none
        
        label.snp.makeConstraints { (m) in
            m.centerX.equalToSuperview()
            m.top.equalToSuperview().inset(92.0.v_relation)
            m.bottom.equalToSuperview().inset(46.0.v_relation)
            m.height.equalTo(20.0.h_relation)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
