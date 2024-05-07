//
//  ImageDownloader.swift
//  CollectionViewImgs
//

import UIKit

final class ImageDownloader {
    
    enum CacheEntry {
        case inProgress(Task<UIImage?, Never>)
        case complete(UIImage)
    }
    
    private var cache: [URL: UIImage] = [:]
    
    func fetchImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
        if let cached = cache[url] {
            completion(cached)
            return
        }
        
        downloadImage(from: url) { image in
            DispatchQueue.main.async {
                self.cache[url] = image
                completion(image)
            }
        }
    }
    
    private nonisolated func downloadImage(from url: URL,
                                           completion: @escaping (UIImage?) -> Void) {
        URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, err in
            if let err {
                print(err)
                completion(nil)
                return
            }
            
            guard let data else {
                print("No data")
                completion(nil)
                return
            }
            
            let img = UIImage(data: data)
            completion(img)
        }
        .resume()
    }
    
}
