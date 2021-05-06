//
//  Lookfor.swift
//  Fika
//
//  Created by 邱孟儒 on 2021/3/22.
//

import SwiftUI

struct Lookfor: View {
    @Environment(\.presentationMode) var Mo
    @State private var school:Bool = false
    @State private var signin:Bool = false
    var body: some View {
            ZStack{
                //background
                Image("Rectangle 254")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    VStack{
                        Button(action: { self.Mo.wrappedValue.dismiss()}, label: {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                        })
                        .padding(.trailing,280).padding(.bottom,20)
                    //Please enter your details
                    Text("I am Looking for")
                        .font(.custom("GothamRounded-Book", size: 25))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .padding()
                    //Rectangle 21
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 20, height: 3)
                    .shadow(color: Color(#colorLiteral(red: 0.3529411852359772, green: 0.21960784494876862, blue: 0.7372549176216125, alpha: 1)), radius:200, x:0, y:40)
                        
                    }.padding(.top,100)
                    
                    ZStack{
                    //white rectangle
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 322, height: 320)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.09000000357627869)), radius:85, x:0, y:25)
                        VStack{
                            Button(action:{})
                            {
                                Image("Group 2025")
                                    .padding(.top,80)
                            }
                            Button(action:{})
                            {
                                Image("Group 2026")
                                    .padding(.top,10)
                            }
                            Button(action:{})
                            {
                                Image("Group 2027")
                                    .padding(.top,10)
                            }
                            Button(action:{
                                self.school.toggle()
                            }){
                            ZStack{
                                //Rectangle 256
                                RoundedRectangle(cornerRadius: 13)
                                    .fill(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3843137323856354, blue: 0.3529411852359772, alpha: 1)))
                                .frame(width: 260, height: 51)
                                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.10999999940395355)), radius:35, x:0, y:15)


                            //Continue
                                Text("Continue")
                                .font(.custom("GothamRounded-Bold", size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .tracking(0.32)
                                    }
                                    .fullScreenCover(isPresented: $school, content: School_Job.init)
                                } .padding(.top,30)
                        
                        }
                    }
                    //Already have an Account ? Sign In
                    
                    HStack{
                                            
                            Text("Already have an Account ? ")
                                .padding(.top,20)
                            .font(.custom("GothamRounded-Medium", size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                               
                            Button(action: {
                                self.signin.toggle()
                            }) {
                                Text("Sign In")
                                .font(.custom("GothamRounded-Medium", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .tracking(0.28)
                                .underline()
                                .padding(.top,20)
                                }
                            .fullScreenCover(isPresented: $signin, content: SignIn.init)
                    }
                    Spacer()
                }
            }
    }
}

struct Lookfor_Previews: PreviewProvider {
    static var previews: some View {
        Lookfor()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
        Lookfor()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
    }
}
