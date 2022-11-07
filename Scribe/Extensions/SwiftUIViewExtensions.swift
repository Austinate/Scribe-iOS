//
//  SwiftUIViewExtensions.swift
//  Scribe
//
//  Created by Ostap Taran on 07.11.2022.
//

import Foundation
import SwiftUI

struct ScribeMainBackgroundModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .background(Image("scribeAppBackground"))
  }
}

extension View {
  func mainBackground() -> some View {
    modifier(ScribeMainBackgroundModifier())
  }
}
