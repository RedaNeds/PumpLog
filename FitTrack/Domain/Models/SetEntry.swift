import Foundation

struct SetEntry: Identifiable, Codable, Equatable {
    let id: UUID
    let workoutItemId: UUID
    var index: Int
    var reps: Int
    var load: Double
    var rpe: Double?
    var isWarmup: Bool
    var notes: String?
    var durationSec: Int?
}
