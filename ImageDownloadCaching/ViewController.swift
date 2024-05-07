//
//  ViewController.swift
//  CollectionViewImgs
//

import UIKit

final class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet private weak var collectionView: UICollectionView!
    
    private let items = ListItem.sampleListItems()
    private let imageDownloader = ImageDownloader()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, 
                        numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, 
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let listItem = items[indexPath.item]
        let imageCell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "ImageCell",
            for: indexPath
        ) as! ImageCell
        let title = listItem.title
        print("Cell dequeued for: \(title)")
        
//        if let cachedImage = imageDownloader.cachedImaged(from: listItem.url) {
//            imageCell.configure(text: title, image: cachedImage)
//            print("Cell synchronously configured for item: \(title)")
//        } else {
//            Task {
//                let img = await imageDownloader.fetchImage(from: listItem.url)
//                imageCell.configure(text: title, image: img)
//                print("Cell configured for item: \(title)")
//            }
//        }
        imageDownloader.fetchImage(from: listItem.url) { img in
            imageCell.configure(text: title, image: img)
            print("Cell configured for item: \(title)")
        }
        
        print("Returning cell for: \(title)")
        return imageCell
    }
    
}

