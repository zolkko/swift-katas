import CoreLocation
import SwiftUI


enum Category: String, CaseIterable, Codable, Hashable {
    case featured = "Featured"
    case lakes = "Lakes"
    case rivers = "Rivers"
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String

    var state: String
    var park: String
    var category: String

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
}
