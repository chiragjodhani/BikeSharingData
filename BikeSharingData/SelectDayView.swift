//
//  SelectDayView.swift
//  BikeSharingData
//
//  Created by Chirag's on 09/04/20.
//  Copyright © 2020 Chirag's. All rights reserved.
//

import SwiftUI

struct SelectDayView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
       var dayArray = ["Monday", "Tuesday","Wednesday", "Thirsday","Friday","Saturday","Sunday", "All"]
       @State private var selectedDay = 0
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
                    Text("Which Day : ").font(.system(size: 28, weight: .medium, design: .default)).foregroundColor(.white).padding()
                    HStack {
                        Spacer()
                        Picker(selection: $selectedDay, label: Text("")) {
                            ForEach(0 ..< dayArray.count) {
                                Text(self.dayArray[$0])
                                
                            }
                        }.foregroundColor(.white).frame(width: 150, height: 200, alignment: .center)
                        Spacer()
                    }
                }
                   Spacer()
                   Button(action: {
                    self.isActive = true
                       print("Selected Day:- \(self.dayArray[self.selectedDay])")
                   }) {
                       Text("Next").font(.system(size: 24, weight: .medium, design: .default))
                           .frame(width: UIScreen.main.bounds.width - 64, height: 50, alignment: .center)
                           .background(Color.black.opacity(0.4)).foregroundColor(.white).overlay(
                               RoundedRectangle(cornerRadius: 5)
                                   .stroke(Color.white, lineWidth: 1.5)
                           )
                   }.sheet(isPresented: $isActive) {
                       MostFrequentTimeVC()
                   }
               }.padding(.bottom, 32)
           }.edgesIgnoringSafeArea(.all)
       }
}

struct SelectDayView_Previews: PreviewProvider {
    static var previews: some View {
        SelectDayView()
    }
}
