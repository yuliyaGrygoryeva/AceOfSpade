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
                        Text("2")
                            .font(.system(size: 40, weight: .light, design: .serif))
                            .foregroundColor(.red)
                        
                        Image("diamond")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 25)
                    }.offset(x: -115, y: -170)
                    
                 
                        Image("diamond")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(height: 100)
                           .offset(x: 0, y: 135)
                    
                        Image("diamond")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(height: 100)
                           .offset(x: 0, y: -135)
    
                        
                    VStack(spacing: 0) {
                        Image("diamond")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 25)
                        
                        Text("2")
                            .font(.system(size: 40, weight: .light, design: .serif))
                            .foregroundColor(.red)
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
