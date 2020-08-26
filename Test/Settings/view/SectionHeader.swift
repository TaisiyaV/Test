/*
import UIKit

//class SectionHeader: UITableViewCell {
//
//    var sectionLabel: UILabel = {
//        let l = UILabel()
//        l.font = UIFont.systemFont(ofSize: 15.0.v_relation.float,
//                                   weight: .semibold)
//        l.addCharacterSpacing(-0.22)
//        l.textColor = UIColor(named: "sectionText")
//        return l
//    }()
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//
//        addSubview(sectionLabel)
//
//        sectionLabel.snp.makeConstraints { (m) in
//            m.left.equalToSuperview().inset(25.0.h_relation)
//            m.right.equalToSuperview().inset(16.0.h_relation)
//            m.bottom.equalToSuperview().inset(16.0.v_relation)
//            m.height.equalTo(18.0.h_relation)
//        }
//
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
//}


class SectionView: UIView {
    var sectionLabel: UILabel = {
        let l = UILabel()
        l.font = UIFont.systemFont(ofSize: 15.0.v_relation.float,
                                   weight: .semibold)
        l.addCharacterSpacing(-0.22)
        l.textColor = R.color.sectionText() // UIColor(named: "sectionText")
        return l
    }()

    init() {
        super.init(frame: .zero)
    
        addSubview(sectionLabel)

        sectionLabel.snp.makeConstraints { (m) in
            m.left.equalToSuperview().inset(25.0.h_relation)
            m.right.equalToSuperview().inset(16.0.h_relation)
            m.bottom.equalToSuperview().inset(16.0.v_relation)
            m.height.equalTo(18.0.h_relation)
        }
        
//            sectionLabel.snp.makeConstraints { (m) in
//                m.left.right.equalToSuperview().inset(16.0.h_relation)
//                m.top.equalToSuperview().inset(29.0.v_relation)
//                m.bottom.equalToSuperview().inset(16.0.v_relation)
//                m.height.equalTo(18.0.h_relation)
//            }

    }

    required init?(coder: NSCoder) {
        fatalError()
    }
}
*/
