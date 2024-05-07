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
        print("Dequed cell for: \(listItem.title)")
        
        Task {
            let img = await imageDownloader.fetchImage(from: listItem.url)
            imageCell.configure(text: listItem.title, image: img)
            print("Configured cell for: \(listItem.title)")
        }
        
        print("Returning cell for: \(listItem.title)")
        return imageCell
    }
}

