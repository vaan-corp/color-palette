//
//  Dropdown.swift
//  Color Palette
//
//  Created by Asif on 19/11/22.
//  Copyright © 2022 SkyDevz. All rights reserved.
//

import Foundation
import SwiftUI

struct Dropdown:View {
  var body: some View{
    Menu {
      Text("Sky")
      Text("Raycast")
      Text("Sunset")
    }
  label: {
  }.frame(width:242.0, height: 32.0)
  }
}
