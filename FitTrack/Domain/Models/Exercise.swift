import Foundation

enum Muscle: String, Codable, CaseIterable {
    case pectoraux = "Pectoraux"
    case dos = "Dos"
    case quadriceps = "Quadriceps"
    case ischios = "Ischios"
    case fessiers = "Fessiers"
    case epaulesAnterieures = "Épaules antérieures"
    case epaulesLaterales = "Épaules latérales"
    case epaulesPosteriores = "Épaules postérieures"
    case biceps = "Biceps"
    case triceps = "Triceps"
    case mollets = "Mollets"
    case core = "Core"
}

enum BodyRegion: String, Codable, CaseIterable {
    case upper = "Haut du corps"
    case lower = "Bas du corps"
}

enum Equipment: String, Codable, CaseIterable {
    case barbell = "Barbell"
    case bench = "Bench"
    case rack = "Rack"
    case dumbbell = "Dumbbell"
    case machine = "Machine"
    case bodyweight = "Bodyweight"
    case kettlebell = "Kettlebell"
    case band = "Band"
}

enum ExerciseType: String, Codable {
    case strength
    case cardio
    case stretch
}

enum Stability: String, Codable {
    case free
    case machine
}

struct Exercise: Identifiable, Codable, Equatable {
    let id: UUID
    var name: String
    var aliases: [String]
    var musclesPrimary: [Muscle]
    var musclesSecondary: [Muscle]
    var region: BodyRegion
    var equipment: [Equipment]
    var type: ExerciseType
    var stability: Stability
    var imageName: String?
    var notes: String?
    var isCustom: Bool
}
