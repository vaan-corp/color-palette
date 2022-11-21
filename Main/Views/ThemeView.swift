//
//  ThemeView.swift
//  Color Palette
//
//  Created by Asif on 19/11/22.
//  Copyright © 2022 SkyDevz. All rights reserved.
//

import SwiftUI

struct ThemeView: View {
  
  var body: some View {
    VStack{
      Text("Current Theme")
        .frame(maxWidth: .infinity, alignment: .leading)
      Dropdown()
      SegmentedPickerView()
    }
  }
}

struct ThemeView_Previews: PreviewProvider {
  static var previews: some View {
    ThemeView()
  }
}
