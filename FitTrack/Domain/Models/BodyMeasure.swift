import Foundation

struct BodyMeasure: Identifiable, Codable, Equatable {
    let id: UUID
    var date: Date
    var weight: Double?
    var bodyFat: Double?
    var waist: Double?
}
