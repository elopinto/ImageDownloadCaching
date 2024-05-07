//
//  ImageDownloader.swift
//  CollectionViewImgs
//

import UIKit

@MainActor
final class ImageDownloader {
    
    enum CacheEntry {
        case inProgress(Task<UIImage?, Never>)
        case complete(UIImage)
    }
    
    private var cache: [URL: CacheEntry] = [:]
    
    func cachedImaged(from url: URL) -> UIImage? {
        guard case let .complete(img) = cache[url] else {
            return nil
        }
        return img
    }
    
    func fetchImage(from url: URL, completion: @escaping @MainActor (UIImage?) -> Void) {
        if let image = cachedImaged(from: url) {
            completion(image)
        } else {
            Task {
                let img = await fetchImage(from: url)
                completion(img)
            }
        }
    }
    
    func fetchImage(from url: URL) async -> UIImage? {
        if let cached = cache[url] {
            switch cached {
            case .complete(let image):
                return image
            case .inProgress(let task):
                return await task.value
            }
        }
        
        let task = Task {
            await downloadImage(from: url)
        }
        
        cache[url] = .inProgress(task)
        let image = await task.value
        
        if let image {
            cache[url] = .complete(image)
        }
        
        return image
    }
    
    private nonisolated func downloadImage(from url: URL) async -> UIImage? {
        do {
            let response = try await URLSession.shared.data(from: url)
            return UIImage(data: response.0)
        } catch {
            print(error)
            return nil
        }
    }
    
}
