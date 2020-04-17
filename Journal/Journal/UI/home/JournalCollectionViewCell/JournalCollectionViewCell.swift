import UIKit

class JournalCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var journalDescription: UILabel!
    override public func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
           let attributes =  super.preferredLayoutAttributesFitting(layoutAttributes)
           layoutIfNeeded()
           let height = systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
           attributes.size.height = height
           attributes.size.width = superview?.frame.size.width ?? 0.0
           return attributes
       }
}
