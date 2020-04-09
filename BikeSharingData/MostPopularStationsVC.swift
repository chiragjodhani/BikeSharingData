//
//  MostPopularStationsVC.swift
//  BikeSharingData
//
//  Created by Chirag's on 09/04/20.
//  Copyright © 2020 Chirag's. All rights reserved.
//

import SwiftUI

struct MostPopularStationsVC: View {
    @State var isActive: Bool = false
   var body: some View {
        VStack{
            Image("popularStationBG").resizable().aspectRatio(1.4, contentMode: .fit)
            Text("Displays Statistics on the Most Popular Stations and Trip").font(.system(size: 26, weight: .bold, design: .default)).foregroundColor(.black).multilineTextAlignment(.center).padding(.top, 64).padding(.leading, 12).padding(.trailing, 12)
            Spacer()
            VStack {
                Text("Start/End Station : Streeter Dr & Grand Ave / Streeter Dr & Grand Ave").padding(.bottom, 12)
                Text("Trip : Lake Shore Dr & Monroe StStreeter Dr & Grand Ave")
            }.font(.system(size: 17, weight: .medium, design: .default)).foregroundColor(.black).multilineTextAlignment(.center).padding(.leading, 12).padding(.trailing, 12)
            Spacer()
            Button(action: {
                self.isActive = true
            }) {
                Text("Next").font(.system(size: 24, weight: .medium, design: .default))
                    .frame(width: UIScreen.main.bounds.width - 64, height: 50, alignment: .center)
                    .background(Color.black.opacity(0.4)).foregroundColor(.white).overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.black, lineWidth: 1.5)
                )
            }.sheet(isPresented: $isActive) {
               TotalAndAvgTripDurationVC()
            }.padding(.bottom, 32)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct MostPopularStationsVC_Previews: PreviewProvider {
    static var previews: some View {
        MostPopularStationsVC()
    }
}
