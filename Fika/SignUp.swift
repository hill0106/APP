//
//  SignUp.swift
//  Fika
//
//  Created by 邱孟儒 on 2021/3/21.
//

import SwiftUI

struct SignUp: View {
@Environment(\.presentationMode) var mode
@State private var phone = ""
@State private var email = ""
@State private var pass =  ""
@State private var confirmPass = ""
@State  var signin: Bool = false
    @State var terms:Bool = false
var body: some View {
//        NavigationView{
            ZStack{
                //background
                Image("Rectangle 254")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

                VStack{
                    Button(action: { self.mode.wrappedValue.dismiss()}, label: {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }).padding(.top,120)
                    .padding(.trailing,300)
                    //Please enter your details
                    Text("Please enter your details")
                        .font(.custom("GothamRounded-Book", size: 25))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .padding(.top,50)
                    //Rectangle 21
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 20, height: 3)
                    .shadow(color: Color(#colorLiteral(red: 0.3529411852359772, green: 0.21960784494876862, blue: 0.7372549176216125, alpha: 1)), radius:200, x:0, y:40)
                        .padding(.top,20)
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
                        VStack(spacing: 1){
                            VStack{
                            HStack(spacing: 15){
                                Image(systemName: "phone")
                                .foregroundColor(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)))
                                    .padding(.leading,20)
                                
                                TextField("Phone Number", text: self.$phone).font(.custom("GothamRounded-Medium", size: 14))
                                
                            }
                            Divider().background(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)).opacity(0.3))
                            }
                                .padding(.horizontal,45)
                            
                                
                        
                            VStack{
                                //signup email
                                HStack(spacing: 15){
                                    Image(systemName: "envelope")
                                    .foregroundColor(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)))
                                        .padding(.leading,20)
                                    
                                    TextField("Enter Email Address", text: self.$email).font(.custom("GothamRounded-Medium", size: 14))
                                    
                                }
                                Divider().background(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)).opacity(0.3))
                            }
                                    .padding(.horizontal,45)
                                    .padding(.top,40)
                            
                                //signup password
                            VStack{
                                HStack(spacing: 15){
                                    Image(systemName: "lock")
                                    .foregroundColor(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)))
                                        .padding(.leading,20)
                                    
                                    SecureField("Enter Password", text: self.$pass).font(.custom("GothamRounded-Medium", size: 14))
                                    
                                }
                                Divider().background(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)).opacity(0.3))
                            }
                                    .padding(.horizontal,45)
                                    .padding(.top,40)
                            //confirm password
                            VStack{
                                HStack(spacing: 15){
                                    Image(systemName: "lock")
                                    .foregroundColor(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)))
                                        .padding(.leading,20)
                                    
                                    SecureField("Confirm Password", text: self.$confirmPass).font(.custom("GothamRounded-Medium", size: 14))
                                    
                                    
                                }
                                Divider().background(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)).opacity(0.3))
                            }
                                    .padding(.horizontal,45)
                                    .padding(.top,40)
                            Button(action: {
                                self.terms.toggle()
                            }) {
                            //continue button
                            ZStack{
                        //Rectangle 256
                        RoundedRectangle(cornerRadius: 13)
                            .fill(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3843137323856354, blue: 0.3529411852359772, alpha: 1)))
                        .frame(width: 260, height: 51)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.10999999940395355)), radius:35, x:0, y:15)
                        .padding(.top,30)
//                                NavigationLink(destination:Terms(), isActive: self.$terms){

                                        //Continue
                                                Text("Continue").font(.custom("GothamRounded-Medium", size: 16)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.32)
                                                    .padding(.top,30)
                                    }
                                    .fullScreenCover(isPresented: $terms, content: Terms.init)
//                                }
                            }.padding(.top,30)
                            .padding(.bottom,25)
                            //Already have an Account ? Sign In
                            
                            HStack{
                                                    
                                    Text("Already have an Account ? ")
                                    .font(.custom("GothamRounded-Medium", size: 14))
                                    .foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.47, blue: 0.47, alpha: 1)))
//                                NavigationLink(destination:SignIn(),isActive: self.$signin){
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
//                                }
                            }
                            .padding(.bottom,150)
                        }
                    }
                }

            }

//        }


    }
}


struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
        SignUp()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
    }
}
