import SwiftUI

// 일련의 데이터를 List 형태로 표시하고, 해당 List의 아이템을 눌렀을 때 TabView형식으로 구성된 화면으로 이동되도록 구현
struct ContentView: View {
  var allWorkouts = [
    WorkoutData(id: 1, title: "Squat"),
    WorkoutData(id: 2, title: "Bench"),
    WorkoutData(id: 3, title: "Overhead Press"),
    WorkoutData(id: 4, title: "Pull up"),
    WorkoutData(id: 5, title: "Push up"),
  ]
  
  @State private var selectedWorkout: WorkoutData? = nil
  
  var body: some View {
    NavigationStack {
      List(allWorkouts) { workoutData in
        ListRowNavLink(workoutData: workoutData)
      }
      .listStyle(.carousel)
      .navigationDestination(for: WorkoutData.self) { workoutData in
        ListItemTabView(workoutData: workoutData)
      }
    }
  }
}
