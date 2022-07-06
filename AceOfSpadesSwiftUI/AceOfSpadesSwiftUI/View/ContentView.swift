//
//  ContentView.swift
//  AceOfSpadesSwiftUI
//
//  Created by Ivan Ramirez on 6/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
          LinearGradient(
            colors: [Color("Background1"), Color("Background2")], startPoint: .topLeading,
            endPoint: .bottomTrailing
          )
          .ignoresSafeArea()
          ZStack {
            Rectangle()
              .frame(width: 300, height: 450)
              .foregroundColor(Color("Card"))
              .cornerRadius(10)

            ZStack {
              Image("Spade")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)

              Image("Spade")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 25)
                .offset(x: -115, y: -160)

              Text("A")
                .font(.system(size: 40, weight: .light, design: .serif))
                .offset(x: -115, y: -190)

              Image("Spade")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 25)
                .offset(x: -115, y: -160)
                .rotationEffect(.radians(.pi))

              Text("A")
                .font(.system(size: 40, weight: .light, design: .serif))
                .offset(x: -115, y: -190)
                .rotationEffect(.radians(.pi))
            }
          }
        }
      }
    }


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
