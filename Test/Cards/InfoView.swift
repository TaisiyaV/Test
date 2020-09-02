

import UIKit

class InfoView: UIView {
    
    let icon: UIImageView = {
        let i = UIImageView()
        i.contentMode = .scaleAspectFit
        return i
    }()

    let label: UILabel = {
        let l = UILabel()
        l.font = UIFont.systemFont(ofSize: 15.0.v_relation.float,
                                   weight: .semibold)
        l.addCharacterSpacing(-0.22)
        return l
    }()
    
    let separator: UIImageView = {
        let i = UIImageView()
        i.image = R.image.vector2()
        i.contentMode = .scaleAspectFill
        return i
    }()
    
    

    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        addSubview(icon)
        addSubview(label)
        addSubview(separator)
        
        icon.snp.makeConstraints { (m) in
            m.top.bottom.equalToSuperview().inset(16.0.v_relation)
            m.left.equalToSuperview().inset(16.0.h_relation) //.inset(36.0.h_relation)
            m.height.equalTo(24.0.v_relation)
            m.width.equalTo(24.0.h_relation)
        }

        label.snp.makeConstraints { (m) in
            m.left.equalTo(icon.snp.right).inset(-20.0.h_relation)
            m.centerY.equalTo(icon.snp.centerY)
            m.right.equalToSuperview().inset(20.0.h_relation) //.inset(32.0.h_relation)
            m.height.equalTo(20.0.v_relation)
        }
        
        separator.snp.makeConstraints { (m) in
            m.bottom.equalToSuperview()
            m.left.equalToSuperview().inset(64.0.h_relation) //.inset(80.0.h_relation)
            m.right.equalToSuperview() //.inset(16.0.h_relation)
            m.width.equalTo(279.0.h_relation)
        }
          
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
