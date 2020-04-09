//
//  SelectMonth.swift
//  BikeSharingData
//
//  Created by Chirag's on 09/04/20.
//  Copyright © 2020 Chirag's. All rights reserved.
//

import SwiftUI

struct SelectMonth: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var monthsArray = ["January", "February", "March", "April", "May", "June","July","August","September","October","November","December", "All"]
    @State private var selectedMonth = 0
    @State var isActive: Bool = false
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
                    Text("Which Month :").font(.system(size: 28, weight: .medium, design: .default)).foregroundColor(.white).padding()
                    Picker(selection: $selectedMonth, label: Text("")) {
                        ForEach(0 ..< monthsArray.count) {
                            Text(self.monthsArray[$0])
                            
                        }
                    }.foregroundColor(.white).frame(width: 150, height: 200, alignment: .center)
                }
                Spacer()
                Button(action: {
                    self.isActive = true
                    print("Selected Month:- \(self.monthsArray[self.selectedMonth])")
                }) {
                    Text("Next").font(.system(size: 20, weight: .medium, design: .default))
                        .frame(width: UIScreen.main.bounds.width - 64, height: 50, alignment: .center)
                        .background(Color.black.opacity(0.4)).foregroundColor(.white).overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.white, lineWidth: 1.5)
                        )
                }.sheet(isPresented: $isActive) {
                    SelectDayView()
                }
            }.padding(.bottom, 16)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct SelectMonth_Previews: PreviewProvider {
    static var previews: some View {
        SelectMonth()
    }
}
