
import UIKit

class FirstFotoCell: UITableViewCell {

    let heartImage: UIImageView = {
        let i = UIImageView()
        i.image = R.image.heart()
        i.contentMode = .scaleAspectFit
        return i
    }()
    
    let fotoImage: UIImageView = {
        let f = UIImageView()
        f.image = R.image.foto1()
        return f
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(fotoImage)
        addSubview(heartImage)
        backgroundColor = .none
        
        heartImage.snp.makeConstraints { (m) in
            m.top.equalToSuperview().inset(28.0.v_relation)
            m.left.equalToSuperview().inset(303.0.h_relation)
            m.right.equalToSuperview().inset(16.0.h_relation)
        }
        
        fotoImage.snp.makeConstraints { (m) in
            m.left.right.equalToSuperview()
            m.top.bottom.equalToSuperview().inset(8.0.v_relation)
            m.height.equalTo(329.0.h_relation)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
