//
//  ContentView.swift
//  AceOfSpadesSwiftUI
//
//  Created by Yuliya Grygoryeva on 7/5/22.
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
                    .cornerRadius(20)
                
                ZStack {
                    VStack(spacing: 0) {
                        Text("A")
                            .font(.system(size: 40, weight: .light, design: .serif))
                        
                        Image("Spade")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 25)
                    }.offset(x: -115, y: -170)
                    
                    Image("Spade")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                    
                    VStack(spacing: 0) {
                        Image("Spade")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 25)
                        
                        Text("A")
                            .font(.system(size: 40, weight: .light, design: .serif))
                    }
                    .rotationEffect(.degrees(180))
                    .offset(x: 115, y: 175)
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
