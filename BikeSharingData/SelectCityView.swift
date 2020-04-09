//
//  SelectCityView.swift
//  BikeSharingData
//
//  Created by Chirag's on 08/04/20.
//  Copyright © 2020 Chirag's. All rights reserved.
//

import SwiftUI

struct SelectCityView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var isActive: Bool = false
    @State var selectedCity: String = ""
    var body: some View {
        ZStack{
            Image("bike_share").resizable()
                .clipped().opacity(0.4).background(Color.black)
            VStack {
                VStack {
                    HStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("Back").foregroundColor(.white)
                        }.frame(width: 50, height: 30, alignment: .center).padding(8)
                        Spacer()
                    }
                    Text("Let's explore some US bikeshare data!").font(.system(size: 38, weight: .medium, design: .default)).foregroundColor(.white).multilineTextAlignment(.center)
                }
                Spacer()
                VStack{
                 Text("Would you like to see data for : ").font(.system(size: 21, weight: .medium, design: .default)).foregroundColor(.white).padding().multilineTextAlignment(.center)
                    Button(action: {
                        self.selectedCity = "NEW YORK"
                        print("NEW YORK")
                    }) {
                        Text("NEW YORK").font(.system(size: 20, weight: .medium, design: .default))
                            .frame(width: UIScreen.main.bounds.width - 64, height: 50, alignment: .center)
                            .background(Color.black.opacity(0.4)).foregroundColor(.white).overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.white, lineWidth: 1.5)
                            )
                    }.padding()
                    Button(action: {
                        self.selectedCity = "CHICAGO"
                        print("CHICAGO")
                    }) {
                        Text("CHICAGO").font(.system(size: 20, weight: .medium, design: .default))
                            .frame(width: UIScreen.main.bounds.width - 64, height: 50, alignment: .center)
                            .background(Color.black.opacity(0.4)).foregroundColor(.white).overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.white, lineWidth: 1.5)
                            )
                    }.padding()
                    Button(action: {
                        self.selectedCity = "WASHINGTON"
                        print("WASHINGTON")
                    }) {
                        Text("WASHINGTON").font(.system(size: 20, weight: .medium, design: .default))
                            .frame(width: UIScreen.main.bounds.width - 64, height: 50, alignment: .center)
                            .background(Color.black.opacity(0.4)).foregroundColor(.white).overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.white, lineWidth: 1.5)
                            )
                    }.padding()
                    
                }
                Spacer()
                Button(action: {
                    self.isActive = true
                    print("Selected City:- \(self.selectedCity)")
                }) {
                    Text("Next").font(.system(size: 20, weight: .medium, design: .default))
                        .frame(width: UIScreen.main.bounds.width - 64, height: 50, alignment: .center)
                        .background(Color.black.opacity(0.4)).foregroundColor(.white).overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.white, lineWidth: 1.5)
                        )
                }
                .sheet(isPresented: $isActive) {
                    SelectMonth()
                }
            }.padding(.bottom, 16)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct SelectCityView_Previews: PreviewProvider {
    static var previews: some View {
        SelectCityView()
    }
}
