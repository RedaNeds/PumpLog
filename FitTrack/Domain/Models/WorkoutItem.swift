import Foundation

struct Targets: Codable, Equatable {
    var sets: Int
    var repsRange: [Int]
    var rpe: Double?
    var restSeconds: Int
}

struct WarmupStep: Codable, Equatable {
    var loadPercentage: Double
    var reps: Int
}

struct WarmupScheme: Codable, Equatable {
    var steps: [WarmupStep]
}

struct WorkoutItem: Identifiable, Codable, Equatable {
    let id: UUID
    let workoutId: UUID
    var exerciseId: UUID
    var order: Int
    var targets: Targets
    var warmupScheme: WarmupScheme?
    var supersetKey: String?
}
