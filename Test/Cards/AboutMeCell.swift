
import UIKit

class AboutMeCell: UITableViewCell {
    
    let iconGender: UIImageView = {
       let i = UIImageView()
        i.image = R.image.woman()
        i.contentMode = .scaleAspectFill
        return i
    }()
    
    let labelGender: UILabel = {
       let l = UILabel()
        l.text = "Woman"
        l.font = UIFont.systemFont(ofSize: 14.0.v_relation.float,
                                   weight: .semibold)
        return l
    }()
    
    let iconHeight: UIImageView = {
       let i = UIImageView()
        i.image = R.image.height()
        i.contentMode = .scaleAspectFill
        return i
    }()
    
    let labelHeight: UILabel = {
       let l = UILabel()
        l.text = "6’5”"
        l.font = UIFont.systemFont(ofSize: 14.0.v_relation.float,
                                   weight: .semibold)
        return l
    }()
    
    let background: UIImageView = {
        let b = UIImageView()
        b.image = R.image.aboutMeBg()
        return b
    }()
        
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(background)
        addSubview(iconGender)
        addSubview(labelGender)
        addSubview(iconHeight)
        addSubview(labelHeight)
        
        
        backgroundColor = .none
        
        background.snp.makeConstraints { (m) in
            m.left.right.equalToSuperview() 
            m.top.equalToSuperview().inset(32.0.v_relation)
            m.bottom.equalToSuperview().inset(8.0.v_relation)
        }
        
        iconGender.snp.makeConstraints { (m) in
            m.top.equalToSuperview().inset(49.0.v_relation)
            m.left.equalToSuperview().inset(20.0.h_relation) //.inset(36.0.h_relation)
            m.bottom.equalToSuperview().inset(24.0.v_relation)
            m.height.equalTo(24.0.v_relation)
            m.width.equalTo(24.0.v_relation)
        }
        
        labelGender.snp.makeConstraints { (m) in
            m.top.equalToSuperview().inset(50.0.v_relation)
            m.left.equalTo(iconGender.snp.right).inset(-20.0.h_relation)
            m.height.equalTo(23.0.v_relation)
            m.width.equalTo(51.0.h_relation)
        }
        
        iconHeight.snp.makeConstraints { (m) in
            m.top.equalToSuperview().inset(48.0.v_relation)
            m.left.equalTo(labelGender.snp.right).inset(-93.0.h_relation)
            m.height.equalTo(24.0.v_relation)
            m.width.equalTo(24.0.v_relation)
        }
        
        labelHeight.snp.makeConstraints { (m) in
            m.top.equalToSuperview().inset(52.0.v_relation)
            m.left.equalTo(iconHeight.snp.right).inset(-20.0.h_relation)
            m.height.equalTo(20.0.v_relation)
            m.width.equalTo(50.0.h_relation)
        }      
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
