import Foundation

enum PRMetric: String, Codable {
    case bestE1RM = "best_e1rm"
    case best10RM = "best_10RM"
    case bestLoadAtReps = "best_load_at_reps"
}

struct PR: Identifiable, Codable, Equatable {
    let id: UUID
    let exerciseId: UUID
    var metric: PRMetric
    var value: Double
    var date: Date
}
