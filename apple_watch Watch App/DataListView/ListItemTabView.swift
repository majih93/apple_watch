import SwiftUI

struct ListItemTabView: View {
  var workoutData: WorkoutData
//  var weight: Int
//  var reps: Int
  
  var body: some View {
    TabView {
      Text("Workout")
      
      Text("\(workoutData.title)")
    }
    .tabViewStyle(.verticalPage)
  }
}

