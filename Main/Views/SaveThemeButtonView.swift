//
//  SaveThemeButtonView.swift
//  Color Palette
//
//  Created by Asif on 21/11/22.
//  Copyright © 2022 SkyDevz. All rights reserved.
//

import SwiftUI

struct SaveThemeButtonView: View {
  var body: some View {
    ZStack{
      GeometryReader { geometry in
        
        Button(action: {
          
        }) {
          Text("Save Theme")
            .font(.system(size: geometry.size.width/20))
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.white.opacity(0.1)))
          //            .padding(.trailing,20)
          //            .padding(.leading,50)
  //                    .frame(width: 242, height: 22)
          //                .frame(minWidth: geometry.size.width/2)
        }
        //        .frame(width: geometry.size.width)
        .buttonStyle(PlainButtonStyle())
        
      }
    }
   
  }
}
//        Button(action: {
//          //do action
//        }) {
//          Text("SIGN IN")
//            .frame(width: 200 , height: 50, alignment: .center)
//          //You need to change height & width as per your requirement
//        }
//        .background(Color.blue)
//        .foregroundColor(Color.white)
//        .cornerRadius(5)

//      Button("Click me") {
//          // Perform action here
//      }
//      .frame(width: 100, height: 100)
//      .buttonStyle(BorderedButtonStyle())
//      .background(Color.yellow)


//        Button {
//        } label: {
//          Text("Save Theme")
//            .padding()
//                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.blue))
//                    .frame(minWidth: geometry.size.width/2)
//        }
//        . buttonStyle(PlainButtonStyle())
////        .frame(height: 194, alignment: .leading)
//        .cornerRadius(25)


struct SaveThemeButtonView_Previews: PreviewProvider {
  static var previews: some View {
    SaveThemeButtonView()
  }
}
