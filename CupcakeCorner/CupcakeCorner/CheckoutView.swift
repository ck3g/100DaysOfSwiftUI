//
//  CheckoutView.swift
//  CupcakeCorner
//
//  Created by Vitali Tatarintev on 08.12.19.
//  Copyright © 2019 Vitali Tatarintev. All rights reserved.
//

import SwiftUI

struct CheckoutView: View {
  @ObservedObject var order: Order

  var body: some View {
    Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
  }
}

struct CheckoutView_Previews: PreviewProvider {
  static var previews: some View {
    CheckoutView(order: Order())
  }
}