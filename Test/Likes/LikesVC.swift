
import UIKit
import SnapKit
import PinterestLayout

class LikesVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(likesCollectionView)
        view.backgroundColor = .white
        
        likesCollectionView.dataSource = self
        likesCollectionView.delegate = self
        
        likesCollectionView.snp.makeConstraints { (m) in
            m.left.right.bottom.top.equalToSuperview()
        }
        
        likesCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionCell")
    
    }
    
    var likesCollectionView: UICollectionView = {
        let layout = PinterestLayout()
        
        layout.delegate = self
        layout.cellPadding = 5
        layout.numberOfColumns = 2

        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return cv
    }()

    let images = [R.image.girl(), R.image.girl1(), R.image.girl2(), R.image.girl3()] 
   
}


extension LikesVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCell
        
        cell.image = images[indexPath.item]!
        
        return cell
    }
}
//
//extension LikesVC: PinterestLayoutDelegate {
//
//    func collectionView(collectionView: UICollectionView,
//                        heightForImageAtIndexPath indexPath: IndexPath,
//                        withWidth: CGFloat) -> CGFloat {
//        let image = images[indexPath.item]
//
//        return image!.height(forWidth: withWidth)
//    }
//
//    func collectionView(collectionView: UICollectionView,
//                        heightForAnnotationAtIndexPath indexPath: IndexPath,
//                        withWidth: CGFloat) -> CGFloat {
//        return 0
//    }
//}

