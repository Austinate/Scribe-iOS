//
//  MainView.swift
//  Scribe
//
//  Created by Ostap Taran on 07.11.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
      TabView {
        InstructionsMenuView()
          .tabItem {
            if #available(iOS 14.0, *) {
              Label("Instructions", systemImage: "keyboard")
            } else {
              // Fallback on earlier versions
            }
          }
        Color.yellow
          .tabItem {
            if #available(iOS 14.0, *) {
              Label("Settings", systemImage: "gear")
            } else {
              // Fallback on earlier versions
            }
          }
        Color.green
          .tabItem {
            if #available(iOS 14.0, *) {
              Label("About", systemImage: "info.circle")
            } else {
              // Fallback on earlier versions
            }
          }
      }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
