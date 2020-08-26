
import UIKit
import PinterestLayout

class LikesVC: PinterestVC {
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let text = "Some text. Some text. Some text. Some text."
        
        items = [
            PinterestItem(image: R.image.girl()!, text: text),
            PinterestItem(image: R.image.girl1()!, text: text),
            PinterestItem(image: R.image.girl2()!, text: text),
            PinterestItem(image: R.image.girl3()!, text: text),
        ]
        
        collectionView?.contentInset = UIEdgeInsets(
            top: 20,
            left: 5,
            bottom: 49,
            right: 5
        )
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
