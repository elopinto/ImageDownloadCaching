//
//  ImageCell.swift
//  CollectionViewImgs
//

import UIKit

final class ImageCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet private weak var caption: UILabel!
    
    func configure(text: String, image: UIImage?) {
        self.caption.text = text
        self.imageView.image = image
    }
}
