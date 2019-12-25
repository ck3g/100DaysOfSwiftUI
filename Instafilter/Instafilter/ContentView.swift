//
//  ContentView.swift
//  Instafilter
//
//  Created by Vitali Tatarintev on 24.12.19.
//  Copyright © 2019 Vitali Tatarintev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var image: Image?
  @State private var showingImagePicker = false
  @State private var inputImage: UIImage?

  var body: some View {
    VStack {
      image?
        .resizable()
        .scaledToFit()

      Button("Select Image") {
        self.showingImagePicker = true
      }
    }
    .sheet(isPresented: $showingImagePicker) {
      ImagePicker(image: self.$inputImage, onDismiss: self.loadImage)
    }
  }

  func loadImage() {
    guard let inputImage = inputImage else { return }
    image = Image(uiImage: inputImage)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
