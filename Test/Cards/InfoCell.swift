//
//  InfoCell.swift
//  Test
//
//  Created by tasya on 27.08.2020.
//  Copyright © 2020 Taisiya V. All rights reserved.
//

import UIKit


class InfoCell: UITableViewCell {

    var stack = UIStackView()
    
    let icon: UIImageView = {
        let i = UIImageView()
        i.contentMode = .scaleAspectFit
        i.image = R.image.live()
        return i
    }()

    let label: UILabel = {
        let l = UILabel()
        l.font = UIFont.systemFont(ofSize: 15.0.v_relation.float,
                                   weight: .semibold)
        l.addCharacterSpacing(-0.22)
        return l
    }()

    let backView: UIView = {
        let v = UIView()
        v.layer.cornerRadius = 18
        v.backgroundColor = .white
        return v
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        stack.addArrangedSubview(backView)
        stack.addArrangedSubview(icon)
        stack.addArrangedSubview(label)
        
        addSubview(stack)
        backgroundColor = .none
        
        stack.snp.makeConstraints { (m) in
            m.top.leading.trailing.bottom.equalToSuperview()
        }
        
        layoutView()
  
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func layoutView() {
        backView.snp.makeConstraints { (m) in
            m.top.bottom.equalToSuperview()
            m.left.right.equalToSuperview().inset(16.0.h_relation)
        }
        
        icon.snp.makeConstraints { (m) in
            m.top.bottom.equalToSuperview().inset(16.0.v_relation)
            m.left.equalToSuperview().inset(36.0.h_relation)
            m.height.equalTo(24.0.v_relation)
            m.width.equalTo(24.0.h_relation)
        }

        label.snp.makeConstraints { (m) in
            m.left.equalTo(icon.snp.right).inset(-20.0.h_relation)
            m.centerY.equalTo(icon.snp.centerY)
            m.right.equalToSuperview().inset(32.0.h_relation)
            m.height.equalTo(20.0.v_relation)
        }
    }
    
    func setInfo(info: InfoCellItem) {
        icon.image = info.icon
        label.text = info.title
    }

}





//class InfoCell: UITableViewCell {
//
//    let icon: UIImageView = {
//        let i = UIImageView()
//        i.contentMode = .scaleAspectFit
//        i.image = R.image.live()
//        return i
//    }()
//
//    let label: UILabel = {
//        let l = UILabel()
//        l.font = UIFont.systemFont(ofSize: 15.0.v_relation.float,
//                                   weight: .semibold)
//        l.addCharacterSpacing(-0.22)
//        return l
//    }()
//
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//
//        addSubview(icon)
//        addSubview(label)
//        backgroundColor = .none
//
//        icon.snp.makeConstraints { (m) in
//            m.top.bottom.equalToSuperview().inset(16.0.v_relation)
//            m.left.equalToSuperview().inset(36.0.h_relation)
//            m.height.equalTo(24.0.v_relation)
//            m.width.equalTo(24.0.h_relation)
//        }
//
//        label.snp.makeConstraints { (m) in
//            m.left.equalTo(icon.snp.right).inset(-20.0.h_relation)
//            m.centerY.equalTo(icon.snp.centerY)
//            m.right.equalToSuperview().inset(32.0.h_relation)
//            m.height.equalTo(20.0.v_relation)
//        }
//
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
//
//    func setInfo(info: InfoCellItem) {
//        icon.image = info.icon
//        label.text = info.title
//    }
//
//
//}


