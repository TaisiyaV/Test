
import UIKit
import SnapKit

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

//    let likesCollectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
//        layout.itemSize = CGSize(width: 60, height: 60)
//        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.backgroundColor = .black
//        return cv
//    }()
    
    var likesCollectionView: UICollectionView = {

//        let layout: PinterestLayout = {
//            let l = PinterestLayout()
//      //     l.delegate = self
//            l.cellPadding = 5
//            l.numberOfColumns = 2
//            return l
//        }()

        let cv = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
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
        
  //      cell.image = images[indexPath.item]!
        
        return cell
    }
}

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

