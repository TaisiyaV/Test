

import UIKit
import SnapKit
import Koloda

class CardsVC: UIViewController, KolodaViewDataSource, KolodaViewDelegate {
    
    let v = CardsView()
    
    let bg: UIImageView = {
        let i = UIImageView()
        i.image = R.image.likes_bg()
        i.contentMode = .scaleAspectFill
        return i
    }()
    
    var kolodaView = KolodaView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()

        view.addSubview(bg)
        view.addSubview(kolodaView)

        bg.snp.makeConstraints { (m) in
            m.top.left.right.bottom.equalToSuperview()
        }
        
        kolodaView.snp.makeConstraints { (m) in
            m.right.left.equalToSuperview().inset(16.0.h_relation)
            m.top.equalToSuperview().inset(12.0.v_relation)
            m.bottom.equalToSuperview().inset(97.0.v_relation)
            m.height.equalTo(614.0.h_relation)
        }
        
        kolodaView.layer.cornerRadius = 20
        kolodaView.clipsToBounds = true
        kolodaView.dataSource = self
        kolodaView.delegate = self

    }
    
    
    func setupNavBar () {
        
        let logo = UIBarButtonItem(image: R.image.logo(), style: .done, target: self, action: nil)
        navigationItem.leftBarButtonItem = logo
        navigationItem.leftBarButtonItem?.tintColor = .black
        
        let filter = UIBarButtonItem(image: R.image.button(), style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItem = filter
        navigationItem.rightBarButtonItem?.tintColor = .black
        
    }
    
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {

        return v
    }
    
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return 1
    }

}

