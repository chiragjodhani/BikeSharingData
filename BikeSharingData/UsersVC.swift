//
//  UsersVC.swift
//  BikeSharingData
//
//  Created by Chirag's on 09/04/20.
//  Copyright © 2020 Chirag's. All rights reserved.
//

import SwiftUI

struct UsersVC: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
       var body: some View {
           VStack{
               Image("InternetUsersIndia").resizable().aspectRatio(1.4, contentMode: .fit)
               Text("Displays Statistics on Bikeshare Users").font(.system(size: 28, weight: .bold, design: .default)).foregroundColor(.black).multilineTextAlignment(.center).padding(.top, 64).padding(.leading, 12).padding(.trailing, 12)
               Spacer()
               HStack{
                   VStack {
                       Text("Subscriber : ").frame(width: 100, height: 40, alignment: .trailing)
                       Text("Customer : ").frame(width: 100, height: 40, alignment: .trailing)
                    Text("Male : ").frame(width: 100, height: 40, alignment: .trailing)
                    Text("Female : ").frame(width: 100, height: 40, alignment: .trailing)
                   }
                   VStack{
                       Text("878878").frame(width: 100, height: 40, alignment: .leading)
                       Text("25645").frame(width: 100, height: 40, alignment: .leading)
                    Text("52960").frame(width: 100, height: 40, alignment: .leading)
                    Text("19508").frame(width: 100, height: 40, alignment: .leading)
                   }
               }.font(.system(size: 17, weight:.medium, design: .default))
               Spacer()
               Button(action: {
                   self.presentationMode.wrappedValue.dismiss()
               }) {
                   Text("Complete").font(.system(size: 24, weight: .medium, design: .default))
                       .frame(width: UIScreen.main.bounds.width - 64, height: 50, alignment: .center)
                       .background(Color.black.opacity(0.4)).foregroundColor(.white).overlay(
                           RoundedRectangle(cornerRadius: 5)
                               .stroke(Color.black, lineWidth: 1.5)
                   )
               }.padding(.bottom, 32)
           }.edgesIgnoringSafeArea(.all)
       }
}

struct UsersVC_Previews: PreviewProvider {
    static var previews: some View {
        UsersVC()
    }
}
