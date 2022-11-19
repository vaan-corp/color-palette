//
//  ContentView.swift
//  samp
//
//  Created by Asif on 17/11/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ThemeView()
      .padding().frame(width: 274, height: 608)
//    ScrollView{
//      HomeView()
//    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
