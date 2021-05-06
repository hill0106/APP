//
//  Photos.swift
//  Fika
//
//  Created by 邱孟儒 on 2021/3/25.
//

import SwiftUI

struct Photos: View {
    @Environment(\.presentationMode) var mode
    @State private var location = false
    var body: some View {
        VStack{
            Button(action: { self.mode.wrappedValue.dismiss()}, label: {
                Image(systemName: "arrow.left")
                    .foregroundColor(Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)))
                    .font(.largeTitle)
            }).padding(.top,20)
            .padding(.trailing,300)
            //Add Photos
            Text("Add Photos").font(.custom("Gotham Rounded Medium", size: 29)).foregroundColor(Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)))
            HStack{
                //Rectangle 267
                RoundedRectangle(cornerRadius: 13)
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                .frame(width: 102, height: 122)
                //Rectangle 267
                RoundedRectangle(cornerRadius: 13)
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                .frame(width: 102, height: 122)
                //Rectangle 267
                RoundedRectangle(cornerRadius: 13)
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                .frame(width: 102, height: 122)
            }.padding(.top,20)
            HStack{
                //Rectangle 267
                RoundedRectangle(cornerRadius: 13)
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                .frame(width: 102, height: 122)
                //Rectangle 267
                RoundedRectangle(cornerRadius: 13)
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                .frame(width: 102, height: 122)
                //Rectangle 267
                RoundedRectangle(cornerRadius: 13)
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                .frame(width: 102, height: 122)
            }
            HStack{
                //Rectangle 267
                RoundedRectangle(cornerRadius: 13)
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                .frame(width: 102, height: 122)
                //Rectangle 267
                RoundedRectangle(cornerRadius: 13)
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                .frame(width: 102, height: 122)
                //Rectangle 267
                RoundedRectangle(cornerRadius: 13)
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                .frame(width: 102, height: 122)
            }.padding(.bottom,10)
            Button(action: {self.location.toggle()}){
            ZStack{
                //Rectangle 256
                RoundedRectangle(cornerRadius: 13)
                    .fill(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3843137323856354, blue: 0.3529411852359772, alpha: 1)))
                .frame(width: 304, height: 57)

                    //Done
                    Text("Done").font(.custom("GothamRounded-Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.32)
                }
                .fullScreenCover(isPresented: $location, content:Location.init)
            }.padding(.bottom,30)
        }
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
       Photos()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
    }
}
