//
//  ThirdQuestionCell.swift
//  Test
//
//  Created by tasya on 27.08.2020.
//  Copyright © 2020 Taisiya V. All rights reserved.
//

import UIKit

class ThirdQuestionCell: UITableViewCell {

    let bgView: UIImageView = {
        let v = UIImageView()
        v.image = R.image.backView3()
        return v
    }()
    
    let qLabel: UILabel = {
        let l = UILabel()
        l.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        l.text = "i bet you can’t"
        l.textColor = .white
        return l
    }()
    
    let aLabel: UILabel = {
        let l = UILabel()
        l.font = UIFont.systemFont(ofSize: 28, weight: .semibold)
        l.text = "win a round of cs go with me on a team 🍭 🦴"
        l.textColor = .white
        l.numberOfLines = 0
        return l
    }()
    
    let heartImage: UIImageView = {
        let i = UIImageView()
        i.image = R.image.heart()
        i.contentMode = .scaleAspectFit
        return i
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(bgView)
        addSubview(qLabel)
        addSubview(aLabel)
        addSubview(heartImage)
        backgroundColor = .none
        
        bgView.snp.makeConstraints { (m) in
            m.top.bottom.equalToSuperview()
            m.left.right.equalToSuperview().inset(16.0.h_relation)
            m.height.equalTo(169.0.h_relation)
        }
        
        qLabel.snp.makeConstraints { (m) in
            m.top.equalToSuperview().inset(32.0.v_relation)
            m.left.right.equalToSuperview().inset(48.0.h_relation)
            m.height.equalTo(23.0.h_relation)
        }
        
        aLabel.snp.makeConstraints { (m) in
            m.top.equalTo(qLabel.snp.bottom).inset(-14.0.v_relation)
            m.left.right.equalToSuperview().inset(48.0.h_relation)
            m.height.equalTo(68.0.h_relation)
        }
        
        heartImage.snp.makeConstraints { (m) in
            m.top.equalToSuperview().inset(20.0.v_relation)
            m.left.equalToSuperview().inset(319.0.h_relation)
            m.right.equalToSuperview().inset(32.0.h_relation)
        }
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
