//
//  MainMenuView.swift
//  Scribe
//
//  Created by Ostap Taran on 07.11.2022.
//

import SwiftUI

struct InstructionsMenuView: View {
  var body: some View {
    GeometryReader { geometry in
      ScrollView {
        logoView(geometry: geometry)
          .padding([.top, .bottom], 30)
        VStack(spacing: 20) {
          installationItem()
          communityItem()
        }.frame(width: ceil(geometry.size.width * 0.9))
      }
    }.mainBackground()
  }

  @ViewBuilder func logoView(geometry: GeometryProxy) -> some View {
      HStack {
        Spacer()
        Image("ScribeLogo")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: ceil(geometry.size.width * 0.6))
        Spacer()
      }
  }

  @ViewBuilder func installationItem() -> some View {
    let directions = getENInstallationDirections(fontSize: UIFont.systemFontSize)
    MenuItemView(title: "Keyboard Installation", icon: Image(systemName: "gear")) {
      if #available(iOS 15, *) {
        Text(AttributedString(directions))
      } else {
        Text(directions.string)
      }
    }
  }

  @ViewBuilder func communityItem() -> some View {
    let directions = getENGitHubText(fontSize: UIFont.systemFontSize)
    MenuItemView(title: "Community", icon: Image(systemName: "gear")) {
      if #available(iOS 15, *) {
        Text(AttributedString(directions))
      } else {
        Text(directions.string)
      }
    }
  }
}

struct InstructionsMenuView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionsMenuView()
    }
}
