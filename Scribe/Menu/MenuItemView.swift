//
//  MenuItemButton.swift
//  Scribe
//
//  Created by Ostap Taran on 07.11.2022.
//

import SwiftUI

struct MenuItemView<Content: View>: View {
  @State var title: String
  @State var icon: Image
  @ViewBuilder var content: Content
  var body: some View {
      HStack {
        Spacer()
        VStack(spacing: 0) {
          HStack(alignment: .top) {
            Text(title)
              .font(.headline)
              .padding(.leading)
            Spacer()
            icon
              .font(.title)
              .offset(CGSize(width: 10, height: -10))
          }.padding([.leading, .top, .trailing])
          content
            .padding(.top, -20) // Removes extra padding of the text block
            .padding([.leading, .bottom, .trailing])
        }
        .background(Color.white)
        .cornerRadius(25)
        .shadow(radius: 5)
        Spacer()
      }
  }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
      VStack {
        let directions = getENInstallationDirections(fontSize: UIFont.systemFontSize)
        MenuItemView(title: "Keyboard Installation",
                     icon: Image(systemName: "gear")) {
          if #available(iOS 15, *) {
            Text(AttributedString(directions))
          } else {
            Text(directions.string)
          }
        }
      }.mainBackground()
    }
}
