//
//  ContentView.swift
//  BikeSharingData
//
//  Created by Chirag's on 08/04/20.
//  Copyright © 2020 Chirag's. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = false
    var body: some View {
        ZStack{
            Image("bg_Bike").resizable()
                .clipped().opacity(0.6).background(Color.black)
            VStack {
                Text("EXPLORE BIKESHARE DATA").font(.system(size: 75, weight: .medium, design: .default)).foregroundColor(.white).padding(.top, 64).multilineTextAlignment(.center)
                Spacer()
                Button(action: {
                    self.isActive = true
                }) {
                    Text("GET STARTED").font(.system(size: 24, weight: .medium, design: .default))
                        .frame(width: UIScreen.main.bounds.width - 64, height: 50, alignment: .center)
                        .background(Color.black.opacity(0.4)).foregroundColor(.white).overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.white, lineWidth: 1.5)
                        )
                }
                .sheet(isPresented: $isActive) {
                    SelectCityView()
                }
            }.padding(.bottom, 32)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
