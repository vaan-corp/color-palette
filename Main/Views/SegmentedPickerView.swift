//
//  SegmentedPickerView.swift
//  Color Palette
//
//  Created by Asif on 19/11/22.
//  Copyright © 2022 SkyDevz. All rights reserved.
//

import SwiftUI

struct SegmentedPickerView: View {
  @State var color: String = "primary"
  @State private var bgColor = Color.blue
  @State private var username: String = ""
  var body: some View {
    Group{
      Picker("",selection: $color) {
        Text("Primary").tag("primary")
        Text("Support").tag("support")
      }
      .pickerStyle(SegmentedPickerStyle())
      .padding()
      Group{
        ForEach(0...5, id: \.self) { color in
          Group{
            Text("Background Primary")
            HStack{
              bgColor
                .frame(width: 40, height: 40)
                .overlay(ColorPicker("", selection: $bgColor).labelsHidden().opacity(0.015))
                .cornerRadius(16)
              TextField(username, text: $username)
            }
          }
          .frame(width: 242, height: 32)
        }
      }
//      .frame(width: 274, height: 512)
    }
  }
}

struct SegmentedPickerView_Previews: PreviewProvider {
  static var previews: some View {
    SegmentedPickerView()
  }
}
