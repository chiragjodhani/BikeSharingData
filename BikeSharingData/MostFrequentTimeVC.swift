//
//  MostFrequentTimeVC.swift
//  BikeSharingData
//
//  Created by Chirag's on 09/04/20.
//  Copyright © 2020 Chirag's. All rights reserved.
//

import SwiftUI

struct MostFrequentTimeVC: View {
    @State var isActive: Bool = false
    var body: some View {
        VStack{
            Image("frequentTime").resizable().aspectRatio(1.4, contentMode: .fit)
            Text("Calculating The Most Frequent Times of Travel").font(.system(size: 28, weight: .bold, design: .default)).foregroundColor(.black).multilineTextAlignment(.center).padding(.top, 32).padding(.leading, 12).padding(.trailing, 12)
            Spacer()
            HStack{
                VStack {
                    Text("Month : ").frame(width: 100, height: 40, alignment: .trailing)
                    Text("Day : ").frame(width: 100, height: 40, alignment: .trailing)
                    Text("Start Hour : ").frame(width: 100, height: 40, alignment: .trailing)
                }
                VStack{
                    Text("June").frame(width: 100, height: 40, alignment: .leading)
                    Text("Tuesday").frame(width: 100, height: 40, alignment: .leading)
                    Text("17").frame(width: 100, height: 40, alignment: .leading)
                }
            }.font(.system(size: 17, weight:.medium, design: .default))
            Spacer()
            Button(action: {
                 self.isActive = true
            }) {
                Text("Next").font(.system(size: 20, weight: .medium, design: .default))
                    .frame(width: UIScreen.main.bounds.width - 64, height: 50, alignment: .center)
                    .background(Color.black.opacity(0.4)).foregroundColor(.white).overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.black, lineWidth: 1.5)
                )
            }.sheet(isPresented: $isActive) {
               MostPopularStationsVC()
            }.padding(.bottom, 16)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct MostFrequentTimeVC_Previews: PreviewProvider {
    static var previews: some View {
        MostFrequentTimeVC()
    }
}
