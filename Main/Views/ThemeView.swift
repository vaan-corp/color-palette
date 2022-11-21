//
//  ThemeView.swift
//  Color Palette
//
//  Created by Asif on 19/11/22.
//  Copyright © 2022 SkyDevz. All rights reserved.
//

import SwiftUI

struct ThemeView: View {
  func saveTheme(){
    
  }
  var body: some View {
    VStack(spacing:20){
      
      Dropdown()
        .frame(maxWidth: .infinity, alignment: .leading)
      SegmentedPickerView()
      SaveThemeButtonView()
        .frame(maxWidth: .infinity, alignment: .leading)
//      HStack {
//          Button("Save Theme", action: signIn)
////          Button("Register", action: register)
//      }
//      .buttonStyle(.bordered)
//      .frame(width: 242)
//
//      Button(action: saveTheme) {
////              Label("Add Folder", systemImage: "folder.badge.plus")
//        Label("Save Theme")
//          }
    }
  }
}

struct ThemeView_Previews: PreviewProvider {
  static var previews: some View {
    ThemeView()
  }
}
