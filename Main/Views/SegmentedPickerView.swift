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
  
  @State var preselectedIndex = 0
  
  //  @FocusState
  //  private var focusState: Bool
  //  @FocusState private var focusState: Bool
  
  var body: some View {
    VStack (alignment:.leading,spacing:10){
      //      VStack{
      CustomSegmentedControlView(preselectedIndex: $preselectedIndex, buttons: ["Primary", "Support"])
        .frame(maxWidth: .infinity, alignment: .leading)
      //      }
      //      .multilineTextAlignment(.trailing)
      
      //        .frame(width: .infinity, alignment: .leading)
      
      
      
      //      Picker("",selection: $color) {
      //        Text("Primary")
      //          .frame(width: 58,height:22)
      //          .tag("primary")
      ////                Spacer().frame(width: 2,height:22)
      //        Text("Support")
      //          .frame(width: 58,height:22)
      //          .tag("support")
      //      }
      //
      //      .padding()
      //      .pickerStyle(.segmented)
      
      //      .frame(maxWidth: .infinity, alignment: .trailing)
      //      .background(.gray .opacity(0.3))
      //      .onAppear(perform: self.appearance().backgroundColor = .clear)
      //      .background(Color.black)
      //      .padding()
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
                  .scaleEffect(x: 0.5, y: 0.5)
                  .opacity(0.08)
                  .padding(.horizontal)
                  .frame(maxWidth: 32, maxHeight: 32)
                  .background(Color(.blue))
                  .cornerRadius(15)
                
              }
              //              ZStack{
              //                ColorPicker("", selection: $bgColor)
              //
              //      //            .padding(2)
              ////                  .opacity(preselectedIndex == index ? 1 : 0.01)
              ////                  .onTapGesture {
              ////                      ColorPicker("", selection: $color1)
              ////                  }
              //              }
              //              .overlay(
              //                Rectangle()
              ////                  .fill($bgColor)
              //                  .cornerRadius(20)
              //              )
              Spacer()
              TextField(username, text: $username)
                .frame(width: 202, height: 32)
                .textFieldStyle(RoundedBorderTextFieldStyle())
              //                .focused(<#T##condition: FocusState<Bool>.Binding##FocusState<Bool>.Binding#>)
              //                .focusable(onFocusChange: bord)
              //                .background(focused ? .black : .clear)
              //                .focused(<#T##condition: FocusState<Bool>.Binding##FocusState<Bool>.Binding#>)
            }
          }
          .frame(width: 242, height: 32)
        }
//        VStack{
////          Button("save", action: { } )
////                             .font(.largeTitle)
////                             .frame(width: 242, height: 186, alignment: .center)
//          Button {
//          } label: {
//            Text("Save Theme")
//              .frame(height: 64)
//              .font(.largeTitle)
//          }
//          .frame(height: 64)
//          .cornerRadius(25)
//        }.frame(height: 64)
      }
    }
  }
}

struct SegmentedPickerView_Previews: PreviewProvider {
  static var previews: some View {
    SegmentedPickerView()
  }
}
