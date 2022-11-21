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
  
  @State var color1 = Color.blue
  @State var color2 = Color.purple
  
  var body: some View {
    VStack{
      Picker("",selection: $color) {
        Text("Primary").tag("primary")
        //        Spacer()
        Text("Support").tag("support")
      }
      .pickerStyle(SegmentedPickerStyle())
      .padding()
      Group{
        ForEach(0...5, id: \.self) { color in
          Group {
            Text("Background Primary")
              .frame(maxWidth: .infinity, alignment: .leading)
            HStack( spacing: 5){
              //              ColorPicker("", selection: $color1)
              //                .frame(width: 32, height: 32)
              VStack {
                ColorPicker("", selection: $bgColor)
                  .opacity(0.08)
                  .padding(.horizontal)
                  .frame(maxWidth: 32, maxHeight: 32)
                  .background(Color(.blue))
                  .cornerRadius(15)
                  
              }
             
//              .ignoresSafeArea()
//              Button {
//              } label: {
//                Text("")
//                  .frame(width: 42)
//              }.background(
//                ColorPicker("", selection: $bgColor)
////                    .labelsHidden().opacity(0)
//            )
              Spacer()
              TextField(username, text: $username)
                .frame(width: 202, height: 32)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
          }
          .frame(width: 242, height: 32)
        }
        Button {
        } label: {
          Text("Save Theme")
            .frame(width: 242)
        }
        
        .cornerRadius(25)
        //        .buttonBorderShape(.)
      }
    }
    //    .frame(width: 274, height: 512)
  }
}

struct SegmentedPickerView_Previews: PreviewProvider {
  static var previews: some View {
    SegmentedPickerView()
  }
}
