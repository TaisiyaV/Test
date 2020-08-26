import UIKit
import PinterestLayout


class CustomCollectionVC: UICollectionViewController {
    
    var images: [UIImage] = [R.image.girl()!, R.image.girl1()!, R.image.girl2()!, R.image.girl3()!]
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionViewInsets()
        setupLayout()
    }
    
    //MARK: private
    
    private func setupCollectionViewInsets() {
        collectionView!.backgroundColor = .clear
        collectionView!.contentInset = UIEdgeInsets(
            top: 15,
            left: 5,
            bottom: 49,
            right: 5
        )
    }
    
    private func setupLayout() {
        let layout: PinterestLayout = {
            if let layout = collectionViewLayout as? PinterestLayout {
                return layout
            }
            let layout = PinterestLayout()
            
            collectionView?.collectionViewLayout = layout
            
            return layout
        }()
        layout.delegate = self
        layout.cellPadding = 5
        layout.numberOfColumns = 2
    }
}


//MARK: UICollectionViewDataSource

extension CustomCollectionVC {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "CollectionCell",
            for: indexPath) as! CollectionViewCell
        
        let image = images[indexPath.item]
        
        cell.imageView.image = image
        
        return cell
    }
}


//MARK: PinterestLayoutDelegate

extension CustomCollectionVC: PinterestLayoutDelegate {
    
    func collectionView(collectionView: UICollectionView,
                        heightForImageAtIndexPath indexPath: IndexPath,
                        withWidth: CGFloat) -> CGFloat {
        let image = images[indexPath.item]
        
        return image.height(forWidth: withWidth)
    }
    
    func collectionView(collectionView: UICollectionView,
                        heightForAnnotationAtIndexPath indexPath: IndexPath,
                        withWidth: CGFloat) -> CGFloat {
        return 0
    }
}
