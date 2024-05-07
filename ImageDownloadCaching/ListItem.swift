//
//  ListItem.swift
//  CollectionViewImgs
//

import Foundation

struct ListItem {
    let title: String
    let url: URL
    
    static func sampleListItems() -> [ListItem] {
        return [
            ListItem(title: "Farmer", url: URL(string: "https://www.shutterstock.com/image-photo/happy-female-farmer-holding-freshly-260nw-2131577111.jpg")!),
            ListItem(title: "Bridge", url: URL(string: "https://www.shutterstock.com/image-photo/golden-gate-dawn-surrounded-by-260nw-121582312.jpg")!),
            ListItem(title: "VLogger", url: URL(string: "https://www.shutterstock.com/image-photo/high-angle-view-female-vlogger-260nw-609686012.jpg")!),
            ListItem(title: "Compass", url: URL(string: "https://www.shutterstock.com/image-photo/outdoors-navigation-concept-compass-direction-260nw-2204875879.jpg")!),
            ListItem(title: "Noodle", url: URL(string: "https://www.shutterstock.com/image-photo/thai-noodle-food-making-on-260nw-1283088493.jpg")!),
            ListItem(title: "Vegies", url: URL(string: "https://www.shutterstock.com/image-photo/fresh-fruits-vegetables-commercial-non-260nw-2331978265.jpg")!),
            ListItem(title: "Table", url: URL(string: "https://www.shutterstock.com/image-photo/wooden-table-fire-burning-edge-260nw-2320869901.jpg")!),
            ListItem(title: "Fishing", url: URL(string: "https://www.shutterstock.com/image-photo/father-son-fishing-ocean-surf-260nw-44706772.jpg")!),
            ListItem(title: "Cheerful", url: URL(string: "https://www.shutterstock.com/image-photo/happy-cheerful-45-year-old-260nw-2353012797.jpg")!),
            ListItem(title: "Example", url: URL(string: "https://www.shutterstock.com/image-photo/moscow-russia-29072023-new-elon-260nw-2339442245.jpg")!),
            ListItem(title: "Farmer Two", url: URL(string: "https://www.shutterstock.com/shutterstock/photos/2131577111/display_1500/stock-photo-happy-female-farmer-holding-freshly-picked-carrots-and-sweet-potatoes-on-her-farm-self-sufficient-2131577111.jpg")!),
            ListItem(title: "Bridge Two", url: URL(string: "https://www.shutterstock.com/shutterstock/photos/121582312/display_1500/stock-photo-golden-gate-at-dawn-surrounded-by-fog-121582312.jpg")!),
            ListItem(title: "VLogger Two", url: URL(string: "https://www.shutterstock.com/shutterstock/photos/609686012/display_1500/stock-photo-high-angle-view-of-female-vlogger-editing-video-on-laptop-young-woman-working-on-computer-with-609686012.jpg")!),
            ListItem(title: "Compass Two", url: URL(string: "https://www.shutterstock.com/image-photo/outdoors-navigation-concept-compass-direction-600w-2204875879.jpg")!),
            ListItem(title: "Noodle Two", url: URL(string: "https://www.shutterstock.com/image-photo/thai-noodle-food-making-on-600w-1283088493.jpg")!),
            ListItem(title: "Vegies Two", url: URL(string: "https://www.shutterstock.com/image-photo/fresh-fruits-vegetables-commercial-non-600w-2331978265.jpg")!),
            ListItem(title: "Table Two", url: URL(string: "https://www.shutterstock.com/image-photo/wooden-table-fire-burning-edge-600w-2320869901.jpg")!),
            ListItem(title: "Fishing Two", url: URL(string: "https://www.shutterstock.com/image-photo/father-son-fishing-ocean-surf-600w-44706772.jpg")!),
            ListItem(title: "Cheerful Two", url: URL(string: "https://www.shutterstock.com/image-photo/happy-cheerful-45-year-old-600w-2353012797.jpg")!),
            ListItem(title: "Example Two", url: URL(string: "https://www.shutterstock.com/shutterstock/photos/2339442245/display_1500/stock-photo-moscow-russia-new-elon-musk-s-twitter-x-app-on-smartphone-screen-surrounded-by-other-2339442245.jpg")!),
            ListItem(title: "Farmer Three", url: URL(string: "https://www.shutterstock.com/image-photo/happy-female-farmer-holding-freshly-260nw-2131577111.jpg")!),
            ListItem(title: "Bridge Three", url: URL(string: "https://www.shutterstock.com/image-photo/golden-gate-dawn-surrounded-by-260nw-121582312.jpg")!),
            ListItem(title: "VLogger Three", url: URL(string: "https://www.shutterstock.com/image-photo/high-angle-view-female-vlogger-260nw-609686012.jpg")!),
            ListItem(title: "Compass Three", url: URL(string: "https://www.shutterstock.com/image-photo/outdoors-navigation-concept-compass-direction-260nw-2204875879.jpg")!),
            ListItem(title: "Noodle Three", url: URL(string: "https://www.shutterstock.com/image-photo/thai-noodle-food-making-on-260nw-1283088493.jpg")!),
            ListItem(title: "Vegies Three", url: URL(string: "https://www.shutterstock.com/image-photo/fresh-fruits-vegetables-commercial-non-260nw-2331978265.jpg")!),
            ListItem(title: "Table Three", url: URL(string: "https://www.shutterstock.com/image-photo/wooden-table-fire-burning-edge-260nw-2320869901.jpg")!),
            ListItem(title: "Fishing Three", url: URL(string: "https://www.shutterstock.com/image-photo/father-son-fishing-ocean-surf-260nw-44706772.jpg")!),
            ListItem(title: "Cheerful Three", url: URL(string: "https://www.shutterstock.com/image-photo/happy-cheerful-45-year-old-260nw-2353012797.jpg")!),
            ListItem(title: "Example Three", url: URL(string: "https://www.shutterstock.com/image-photo/moscow-russia-29072023-new-elon-260nw-2339442245.jpg")!)
        ]
    }
}
