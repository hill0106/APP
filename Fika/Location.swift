//
//  Location.swift
//  Fika
//
//  Created by 邱孟儒 on 2021/3/25.
//

import SwiftUI

struct Location: View {
    @Environment (\.presentationMode) var mode
    @State private var place = false
    var body: some View {
        VStack{
            Button(action: { self.mode.wrappedValue.dismiss()}, label: {
                Image(systemName: "arrow.left")
                    .foregroundColor(Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)))
                    .font(.largeTitle)
            }).padding(.bottom,130)
            .padding(.trailing,300)
           Image("Location")
            .padding(.bottom,100)
            
            Button(action:{self.place.toggle()})
            {
                ZStack{
                    //Rectangle 256
                    RoundedRectangle(cornerRadius: 13)
                        .fill(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3843137323856354, blue: 0.3529411852359772, alpha: 1)))
                    .frame(width: 304, height: 57)
                    HStack(alignment: .center, spacing: 25){
                        Image(systemName: "mappin")
                            .resizable()
                            .frame(width: 13, height: 25)
                            .foregroundColor(.white)
                            
                        //Enable Location
                        Text("Enable Location").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.28)
                    }
                }.fullScreenCover(isPresented: $place, content: Places.init)
            }.padding(.bottom,50)
            
        }
    }
}

struct Location_Previews: PreviewProvider {
    static var previews: some View {
        Location()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
       Location()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
    }
}
