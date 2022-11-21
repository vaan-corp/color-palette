//
//  CustomSegmentedControlView.swift
//  Color Palette
//
//  Created by Asif on 21/11/22.
//  Copyright © 2022 SkyDevz. All rights reserved.
//

import SwiftUI

struct CustomSegmentedControlView: View {
  
  @Binding var preselectedIndex: Int
  var buttons: [String]
  let color = Color.white.opacity(0.1)
  
  var body: some View {
    HStack(spacing: 0) {
      ForEach(buttons.indices, id:\.self) { index in
        ZStack {
          Rectangle()
            .fill(color)
            .cornerRadius(20)
//            .padding(2)
            .opacity(preselectedIndex == index ? 1 : 0.01)
            .onTapGesture {
                preselectedIndex = index
            }
          Spacer()
        }
        .overlay(
          Text(buttons[index])
            .onTapGesture {
                preselectedIndex = index
            }
        )
        .frame(width:65,height: 22)
      }
      
    }
//    .frame(width: 150)
//    .multilineTextAlignment(.trailing)
//    .frame(height: 42,alignment: .trailing)
  }
}
