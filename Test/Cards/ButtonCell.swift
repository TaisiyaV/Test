//
//  ButtonCell.swift
//  Test
//
//  Created by tasya on 27.08.2020.
//  Copyright © 2020 Taisiya V. All rights reserved.
//

import UIKit

class ButtonCell: UITableViewCell {
    
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
    
    let label: UILabel = {
        let l = UILabel()
        l.text = "Complain"
        l.font = UIFont.systemFont(ofSize: 12.0.v_relation.float, weight: .semibold)
        l.textColor = R.color.textColor()
        return l
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
          super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(buttonNo)
        addSubview(buttonYes)
        addSubview(label)
        backgroundColor = .none
        
        buttonNo.snp.makeConstraints { (m) in
            m.top.equalToSuperview().inset(66.0.v_relation)
            m.left.equalToSuperview().inset(26.0.h_relation)
            m.bottom.equalToSuperview().inset(26.0.v_relation)
            m.height.width.equalTo(66.0.h_relation)
        }
        
        buttonYes.snp.makeConstraints { (m) in
            m.top.equalToSuperview().inset(66.0.v_relation)
            m.right.equalToSuperview().inset(26.0.h_relation)
            m.bottom.equalToSuperview().inset(26.0.v_relation)
            m.height.width.equalTo(66.0.h_relation)
        }
        
        label.snp.makeConstraints { (m) in
            m.left.equalTo(buttonNo.snp.right).inset(-66.0.h_relation)
            m.right.equalTo(buttonYes.snp.left).inset(-66.0.h_relation)
            m.top.equalToSuperview().inset(92.0.v_relation)
            m.height.equalTo(20.0.h_relation)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
