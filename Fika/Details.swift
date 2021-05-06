//
//  Details.swift
//  Fika
//
//  Created by 邱孟儒 on 2021/3/22.
//

import SwiftUI

struct Details: View {
@State private var first = ""
@State private var last =  ""
@State private var birthday = ""
    @State private var lookfor:Bool = false
    @State private var signin:Bool = false
    @Environment(\.presentationMode) var Mode
    var body: some View {
            ZStack{
                //background
                Image("Rectangle 254")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    VStack{
                        Button(action: { self.Mode.wrappedValue.dismiss()}, label: {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                        }).padding(.top,50)
                        .padding(.trailing,300).padding(.bottom,20)
                    //Please enter your details
                    Text("Please enter your details")
                        .font(.custom("GothamRounded-Book", size: 25))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .padding()
                    //Rectangle 21
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 20, height: 3)
                    .shadow(color: Color(#colorLiteral(red: 0.3529411852359772, green: 0.21960784494876862, blue: 0.7372549176216125, alpha: 1)), radius:200, x:0, y:40)
                        
                    }.padding(.top,150)
                    .padding(.trailing,20)
                    ZStack{

                    //Rectangle 254
                    RoundedRectangle(cornerRadius: 77)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 420, height: 590)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.09000000357627869)), radius:85, x:0, y:25)
                        
                    //white rec
                    RoundedRectangle(cornerRadius: 16)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 430, height: 300)
                        .padding(.top,300)
                        VStack{
                            VStack{
                                VStack{
                                    
                                    //first name
                                    HStack(spacing: 15){
                                        Image(systemName: "person")
                                        .foregroundColor(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)))
                                            .padding(.leading,20)
                                        
                                        TextField("First Name", text: self.$first).font(.custom("GothamRounded-Medium", size: 14))
                                        
                                    }
                                    Divider().background(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)).opacity(0.3))
                                }
                                        .padding(.horizontal,45)
                                        .padding(.top,20)
                                
                                    //last name
                                VStack{
                                    HStack(spacing: 15){
                                        Image(systemName: "person")
                                        .foregroundColor(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)))
                                            .padding(.leading,20)
                                        TextField("Last Name", text: self.$last).font(.custom("GothamRounded-Medium", size: 14))
                                        
                                    }
                                    Divider().background(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)).opacity(0.3))
                                }
                                        .padding(.horizontal,45)
                                        .padding(.top,20)
                                //birthday
                                VStack{
                                    HStack(spacing: 15){
                                        Image(systemName: "gift")
                                        .foregroundColor(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)))
                                            .padding(.leading,20)
                                        
                                        TextField("Your Birthday", text: self.$birthday).font(.custom("GothamRounded-Medium", size: 14))
                                        
                                    }
                                    Divider().background(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)).opacity(0.3))
                                }
                                    .padding(.horizontal,45)
                                    .padding(.top,20)
                            }.padding(.top,130)
                Button(action:{ self.lookfor.toggle()
                                }){
                    ZStack{
                    //Rectangle 256
                    RoundedRectangle(cornerRadius: 13)
                    .fill(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3843137323856354, blue: 0.3529411852359772, alpha: 1)))
                    .frame(width: 260, height: 51)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.10999999940395355)), radius:35, x:0, y:15)
                    .padding(.top,70)

                    //Continue
                        Text("Continue")
                        .font(.custom("GothamRounded-Bold", size: 16))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .tracking(0.32)
                        .padding(.top,70)
                            }
                            .fullScreenCover(isPresented: $lookfor, content: Lookfor.init)
                        

                    }.padding(.bottom,20)

                    //Already have an Account ? Sign In
                    HStack{
                            Text("Already have an Account ? ")
                            .font(.custom("GothamRounded-Medium", size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.47, blue: 0.47, alpha: 1)))

                            Button(action: {
                                self.signin.toggle()
                            }) {
                                Text("Sign In")
                                .font(.custom("GothamRounded-Medium", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.47, blue: 0.47, alpha: 1)))
                                .tracking(0.28)
                                .underline()
                                }
                            .fullScreenCover(isPresented: $signin, content: SignIn.init)
                    }
                    .padding(.bottom,250)
                        }
                    }.padding(.trailing,20)
                    }
            }
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
        Details()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
    }
}
