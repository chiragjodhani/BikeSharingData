//
//  TotalAndAvgTripDurationVC.swift
//  BikeSharingData
//
//  Created by Chirag's on 09/04/20.
//  Copyright © 2020 Chirag's. All rights reserved.
//

import SwiftUI

struct TotalAndAvgTripDurationVC: View {
    @State var isActive: Bool = false
    var body: some View {
        VStack{
            Image("newStatisticsBG").resizable().aspectRatio(1.4, contentMode: .fit)
            Text("Displays Statistics on the Total and Average Trip Duration").font(.system(size: 26, weight: .bold, design: .default)).foregroundColor(.black).multilineTextAlignment(.center).padding(.top, 64).padding(.leading, 12).padding(.trailing, 12)
            Spacer()
            HStack{
                VStack {
                    Text("Total Travel Time : ").frame(width: 200, height: 40, alignment: .trailing)
                    Text("Mean Travel Time :").frame(width: 200, height: 40, alignment: .trailing)
                }
                VStack{
                    Text("5757576 Sec").frame(width: 110, height: 40, alignment: .leading)
                    Text("78475 Sec").frame(width: 110, height: 40, alignment: .leading)
                }
            }.font(.system(size: 17, weight:.medium, design: .default))
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
               UsersVC()
            }.padding(.bottom, 32)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct TotalAndAvgTripDurationVC_Previews: PreviewProvider {
    static var previews: some View {
        TotalAndAvgTripDurationVC()
    }
}
