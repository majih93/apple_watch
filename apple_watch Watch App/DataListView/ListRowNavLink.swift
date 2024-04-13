import SwiftUI

struct ListRowNavLink: View {
  var workoutData: WorkoutData
  
  var body: some View {
    NavigationLink(value: workoutData) {
      Text("\(workoutData.title)")
    }
  }
}

