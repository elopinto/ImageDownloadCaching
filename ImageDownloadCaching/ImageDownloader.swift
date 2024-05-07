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
        // This is not ideal since fetchImage could be called from any thread,
        // possibly attempting to access the cache while it's being written to on the
        // main queue. Also, if this is called while the download of `url` is in progress,
        // another download will be kicked off. The async/await version fixes these
        // issues.
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
