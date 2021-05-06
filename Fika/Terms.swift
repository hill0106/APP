//
//  Terms.swift
//  Fika
//
//  Created by 邱孟儒 on 2021/3/22.
//

import SwiftUI

struct Terms: View{
    @State private var details = false
    @State private var signin:Bool = false
    @Environment(\.presentationMode) var Mode
    @State private var colorchanged = false
    @State private var circlecolor = false
    @State private var colorchanged1 = false
    @State private var circlecolor1 = false
    var body: some View{
                ZStack{
                    //background
                    Image("Rectangle 254")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                    VStack{
                        Button(action: { self.Mode.wrappedValue.dismiss()}, label: {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                        }).padding(.top,50)
                        .padding(.trailing,300)
                        //Please enter your details
                        Text("Terms & Conditions")
                            .font(.custom("GothamRounded-Book", size: 25))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .padding(.top,50)
                        
                        //Rectangle 21
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 20, height: 3)
                        .shadow(color: Color(#colorLiteral(red: 0.3529411852359772, green: 0.21960784494876862, blue: 0.7372549176216125, alpha: 1)), radius:200, x:0, y:40)
                            .padding(.top,30)
                        ZStack{

                        //Rectangle 254
                        RoundedRectangle(cornerRadius: 77)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 420, height: 590)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.09000000357627869)), radius:85, x:0, y:25)
                        //.position(x: 207, y: 478)
                        //white rec
                        RoundedRectangle(cornerRadius: 16)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 430, height: 300)
                        .position(x: 205, y: 650)
                            
                            VStack {
                                VStack{
                                    HStack{
                                        ZStack{
                                            //Rectangle 256
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                                            .frame(width: 33, height: 33)
                                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.03999999910593033)), radius:35, x:0, y:20)
                                            Circle()
                                                .frame(width: 20, height: 20)
                                                .foregroundColor(circlecolor ? Color(#colorLiteral(red: 0.9411764740943909, green: 0.3764705955982208, blue: 0.35686275362968445, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                                        Image(systemName: "checkmark.circle")
                                            .foregroundColor(colorchanged ? .white : Color(#colorLiteral(red: 0.9411764740943909, green: 0.3764705955982208, blue: 0.35686275362968445, alpha: 1)) )

                                        }.onTapGesture {
                                            self.colorchanged.toggle()
                                            self.circlecolor.toggle()
                                        }
                                        //I agree to the Terms & Condition
                                        Text("I agree to the")
                                            .font(.custom("Gotham Rounded Bold", size: 12))
                                            .foregroundColor(Color(#colorLiteral(red: 0.94, green: 0.38, blue: 0.36, alpha: 1)))
                                            .tracking(0.48)
                                            
                                            .multilineTextAlignment(.center)
                                        Link(destination: URL(string: "https://www.google.com/")!, label:{
                                            Text("Terms & Condition")
                                                .font(.custom("Gotham Rounded Bold", size: 12))
                                                .foregroundColor(Color(#colorLiteral(red: 0.94, green: 0.38, blue: 0.36, alpha: 1)))
                                                .underline()
                                        })
                                    }.padding(.bottom,40)
                                    .padding(.trailing,20)
                                        HStack{
                                            ZStack{
                                                //Rectangle 256
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                                                .frame(width: 33, height: 33)
                                                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.03999999910593033)), radius:35, x:0, y:20)
                                                Circle()
                                                    .frame(width: 20, height: 20)
                                                    .foregroundColor(circlecolor1 ? Color(#colorLiteral(red: 0.9411764740943909, green: 0.3764705955982208, blue: 0.35686275362968445, alpha: 1)) : Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                                            Image(systemName: "checkmark.circle")
                                                .foregroundColor(colorchanged1 ? .white : Color(#colorLiteral(red: 0.9411764740943909, green: 0.3764705955982208, blue: 0.35686275362968445, alpha: 1)) )
                                            }.onTapGesture {
                                                self.colorchanged1.toggle()
                                                self.circlecolor1.toggle()
                                            }
                                            //I agree to the Terms & Condition
                                            Text("I agree to the")
                                                .font(.custom("Gotham Rounded Bold", size: 12))
                                                .foregroundColor(Color(#colorLiteral(red: 0.94, green: 0.38, blue: 0.36, alpha: 1)))
                                                .tracking(0.48)
                                                
                                                .multilineTextAlignment(.center)
                                            Link(destination: URL(string: "https://www.google.com/")!, label:{
                                                Text("Privacy Policy")
                                                    .font(.custom("Gotham Rounded Bold", size: 12))
                                                    .foregroundColor(Color(#colorLiteral(red: 0.94, green: 0.38, blue: 0.36, alpha: 1)))
                                                    .underline()
                                            })
                                        }.padding(.bottom,40)
                                        .padding(.trailing,48)
                                }
                                Button(action:{ self.details.toggle()
                                }){
                                ZStack{
                            //Rectangle 256
                            RoundedRectangle(cornerRadius: 13)
                            .fill(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3843137323856354, blue: 0.3529411852359772, alpha: 1)))
                            .frame(width: 260, height: 51)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.10999999940395355)), radius:35, x:0, y:15)
                            .padding(.top,30)

 
                            //Continue
                                Text("Continue")
                                .font(.custom("GothamRounded-Bold", size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .tracking(0.32)
                                .padding(.top,30)
                                    }
                                    .fullScreenCover(isPresented: $details, content: Details.init)

                                }.padding(.bottom,40)
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
                                }.padding(.bottom,140)
                            }
                        }
                    }
                }
    }
}

struct Terms_Previews: PreviewProvider {
    static var previews: some View {
        Terms()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
        Terms()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
    }
}
