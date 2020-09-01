
import UIKit

class SettingsTableViewCell: UITableViewCell {

    let leftIcon: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
//        iv.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return iv
    }()

    let titleSettingsLabel: UILabel = {
        let l = UILabel()
        l.font = UIFont.systemFont(ofSize: 15.0.v_relation.float,
                                   weight: .semibold)
        l.addCharacterSpacing(-0.22)
        return l
    }()

    let rightIcon: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
//        iv.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return iv
    }()

    let bgImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = R.image.shadow() // UIImage(named: "shadow")
        return iv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = R.color.settings_bg() //UIColor(named: "settings_bg")
        addSubview(bgImageView)
        addSubview(leftIcon)
        addSubview(titleSettingsLabel)
        addSubview(rightIcon)

        bgImageView.snp.makeConstraints { (m) in
            m.top.equalToSuperview()
            m.left.right.equalToSuperview().inset(16.0.h_relation)
            m.height.equalTo(65.0.v_relation)
            m.bottom.equalToSuperview()
        }

        leftIcon.snp.makeConstraints { (m) in
            m.top.equalToSuperview().inset(16.0.v_relation)
            m.left.equalToSuperview().inset(36.0.h_relation)
            m.width.equalTo(17.0.h_relation)
            m.height.equalTo(20.0.h_relation)
        }

        rightIcon.snp.makeConstraints { (m) in
            m.top.equalToSuperview().inset(16.0.v_relation)
            m.right.equalToSuperview().inset(36.0.h_relation)
            m.width.equalTo(11.0.h_relation)
            m.height.equalTo(20.0.h_relation)
        }

        titleSettingsLabel.snp.makeConstraints { (m) in
            m.left.equalTo(leftIcon.snp.right).inset(-13.0.h_relation)
            m.right.equalTo(rightIcon.snp.left).inset(-13.0.h_relation)
            m.centerY.equalTo(leftIcon.snp.centerY)
            m.height.equalTo(20.0.v_relation)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func set(setting: SettingCellItem) {
        leftIcon.image = setting.leftIcon
        titleSettingsLabel.text = setting.title
        rightIcon.image = setting.rightIcon
    }
}

extension Double {
    var h_relation: Double {
        return (self * UIScreen.main.bounds.width.double) / 375
    }

    var v_relation: Double {
        return (self * UIScreen.main.bounds.height.double) / 812
    }

    var float: CGFloat {return CGFloat(self)}
}

extension CGFloat {

    var double: Double {return Double(self)}
}

extension UILabel {
    func addCharacterSpacing(_ kernValue: Double = 1.15) {
          if let labelText = text, labelText.count > 0 {
              let attributedString = NSMutableAttributedString(string: labelText)
              attributedString.addAttribute(NSAttributedString.Key.kern, value: kernValue, range: NSRange(location: 0, length: attributedString.length - 1))
              attributedText = attributedString
          }
      }
}

