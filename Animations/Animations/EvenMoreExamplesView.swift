//
//  EvenMoreExamplesView.swift
//  Animations
//
//  Created by Vitali Tatarintev on 17.11.19.
//  Copyright © 2019 Vitali Tatarintev. All rights reserved.
//

import SwiftUI

struct EvenMoreExamplesView: View {
  @State private var enabled = false

  var body: some View {
    Button("Tap Me") {
      self.enabled.toggle()
    }
    .frame(width: 200, height: 200)
    .background(enabled ? Color.blue : Color.red)
    .animation(.default)
    .foregroundColor(.white)
    .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
    .animation(.interpolatingSpring(stiffness: 10, damping: 1))
  }
}

struct EvenMoreExamplesView_Previews: PreviewProvider {
  static var previews: some View {
    EvenMoreExamplesView()
  }
}
