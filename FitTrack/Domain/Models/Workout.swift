import Foundation

enum WorkoutStatus: String, Codable {
    case inProgress = "in_progress"
    case completed
    case archived
}

struct Workout: Identifiable, Codable, Equatable {
    let id: UUID
    var startedAt: Date
    var endedAt: Date?
    var status: WorkoutStatus
    var notes: String?
}
