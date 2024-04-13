import Foundation

struct WorkoutData: Identifiable, Hashable {
 
  
  var id: Int
  var title: String
  var workouts: [Workout] = [
    Workout(id: 1, weight: 20, reps: 10, type: "", rpe: 6),
    Workout(id: 2, weight: 20, reps: 10, type: "", rpe: 6),
    Workout(id: 3, weight: 20, reps: 10, type: "", rpe: 6),
    Workout(id: 4, weight: 20, reps: 10, type: "", rpe: 6),
    Workout(id: 5, weight: 20, reps: 10, type: "", rpe: 6),
  ]
//  
//  func hash(into hasher: inout Hasher) {
//     hasher.combine(id)
//     hasher.combine(title)
//     hasher.combine(workouts)
//   }
}

struct Workout: Identifiable, Hashable {
  var id: Int
  
  var weight: Int
  var reps: Int
  var type: String
  var rpe: Int
}
