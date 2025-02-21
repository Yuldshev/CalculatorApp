import SwiftUI

struct ComputationView: View {
  let currentComputation: String
  let mainResult: String
  
  var body: some View {
    VStack(spacing: 10) {
      HStack {
        Spacer()
        
        Text(currentComputation)
          .foregroundStyle(.calcText)
          .lineLimit(1)
          .font(ipadAdaptive() ? .largeTitle : .body)
      }
      .minimumScaleFactor(0.1)
      
      HStack {
        Spacer()
        
        Text(mainResult)
          .foregroundStyle(.calcText)
          .lineLimit(1)
          .font(.largeTitle)
          .fontWeight(.bold)
      }
      .minimumScaleFactor(0.1)
    }
    .padding(.horizontal)
  }
}

#Preview {
  ComputationView(
    currentComputation: "5 + 5",
    mainResult: "10"
  )
}
