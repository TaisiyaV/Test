
import UIKit

class MainFotoCell: UITableViewCell {

    let foto: UIImageView = {
        let f = UIImageView()
        f.image = R.image.foto()
        return f
    }()
    
    let nameLabel: UILabel = {
        let l = UILabel()
        l.font = UIFont.systemFont(ofSize: 35, weight: .semibold)
        l.textAlignment = .center
        l.text = "Jessica Soma, 22"
        l.textColor = .white
        return l
    }()
    
    let descriptionLabel: UILabel = {
        let l = UILabel()
        l.font = UIFont.systemFont(ofSize: 20, weight: .semibold) 
        l.textAlignment = .center
        l.text = "80s music brings me back to good times when i wasnt 💀 alive"
        l.textColor = .white
        l.numberOfLines = 0
        return l
    }()
    
    let veganLable: UILabel = {
        let l = UILabel()
        l.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        l.text = "Vegan for 6 years"
        l.textColor = .white
        return l
    }()
    
    let emojiImage: UIImageView = {
       let i = UIImageView()
        i.image = R.image.emoji()
        i.contentMode = .scaleAspectFit
        return i
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(foto)
        addSubview(nameLabel)
        addSubview(descriptionLabel)
        addSubview(veganLable)
        addSubview(emojiImage)
        backgroundColor = .none

        
        foto.snp.makeConstraints { (m) in
            m.top.bottom.equalToSuperview().inset(12.0.v_relation)
            m.left.right.equalToSuperview().inset(16.0.h_relation)
            m.height.equalTo(614.0.h_relation)
        }
        
        nameLabel.snp.makeConstraints { (m) in
            m.height.equalTo(41.5.h_relation)
            m.left.right.equalToSuperview().inset(37.0.h_relation)
            m.top.equalToSuperview().inset(404.3.v_relation)
        }
        
        descriptionLabel.snp.makeConstraints { (m) in
            m.height.equalTo(51.h_relation)
            m.left.right.equalToSuperview().inset(32.0.h_relation)
            m.top.equalTo(nameLabel.snp.bottom).inset(-16.25.v_relation)
        }
        
        emojiImage.snp.makeConstraints { (m) in
            m.left.equalToSuperview().inset(121.0.h_relation)
            m.bottom.equalToSuperview().inset(33.35.v_relation)
            m.height.equalTo(18.0.h_relation)
            m.width.equalTo(18.65.v_relation)
        }
        
        veganLable.snp.makeConstraints { (m) in
            m.left.equalTo(emojiImage.snp.right).inset(-8.0.h_relation)
            m.height.equalTo(20.0.h_relation)
            m.right.equalToSuperview().inset(20.0.h_relation)
            m.centerY.equalTo(emojiImage.snp.centerY)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
