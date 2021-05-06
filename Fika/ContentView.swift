//
//  ContentView.swift
//  Fika
//
//  Created by 邱孟儒 on 2021/3/15.
//

import SwiftUI

struct ContentView: View {
    @State private var signup = false
    @State private var Showsignin = false
    @State private var show = false
   // @State private var isFull = false
    var body: some View {
//        NavigationView{
            ZStack{
                //background
                Image("Rectangle 2083")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                    Spacer()
                    Spacer()
                    ///Fika Logo
                        HStack {
                            //1 LOGO ONLY 2
                            Image(uiImage: #imageLiteral(resourceName: "1 LOGO ONLY 2"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 79, height: 89)
                                .clipped()
                                .position(x: 70, y: 50)
                            //.frame(width: 79, height: 89)
                            Image("Untitled-1 2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)

                        }                                .onAppear{
                            withAnimation(.easeIn(duration: 1.0)){
                                self.show.toggle()
                            }
                        }.opacity(show ? 1 : 0)
//                        .scaleEffect(show ? 1 : 0)

    //                    .compositingGroup()
                        .frame(width: 270, height: 140)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom,100)
                    Button(action:{
                        self.signup.toggle()
                    }){
                    //Get Started button
                        ZStack{
                            //Rectangle 256
                            RoundedRectangle(cornerRadius: 13)
                            .fill(LinearGradient(
                            gradient: Gradient(stops: [
                            .init(color: Color(#colorLiteral(red: 0.9450980424880981, green: 0.501960813999176, blue: 0.29411765933036804, alpha: 1)), location: 0),
                            .init(color: Color(#colorLiteral(red: 0.9372549057006836, green: 0.3176470696926117, blue: 0.3803921639919281, alpha: 1)), location: 1)]),
                            startPoint: UnitPoint(x: 0.28326169418655467, y: -0.549019003923215),
                            endPoint: UnitPoint(x: 0.9999999107919548, y: 2.6372552595508356)))
                            .frame(width: 304, height: 57)
//                            NavigationLink(destination: SignUp().navigationBarTitle("")
//                                            .navigationBarHidden(true), isActive: self.$signup){

                            //Get Started with Fika.
                            Text("Get Started with Fika")
                            .font(.custom("GothamRounded-Bold", size: 16))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.32)
                                }
                                .fullScreenCover(isPresented: $signup, content:SignUp.init)
                           // }
                        }.padding(.bottom,250)
                            }


                    HStack{
                    //Already have an Account ? Sign In
                    Text("Already have an Account ? ")
                        .font(.custom("GothamRounded-Medium", size: 14))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        NavigationLink(destination:SignIn().navigationBarTitle("")
//                                        .navigationBarHidden(true),isActive:self.$Showsignin){
                        Button(action:{ self.Showsignin.toggle()
                            }){
                            Text("Sign In").underline()
                                .font(.custom("GothamRounded-Medium", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))//.tracking(0.28)
                        }
                        .fullScreenCover(isPresented: $Showsignin, content:SignIn.init)
//                        }

                    }.padding(.top,460)
                    
                Spacer()
            }
            
//        }
//        .edgesIgnoringSafeArea(.top)
//        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
    }
}
struct SignIn: View {
    @Environment(\.presentationMode) var Mode
    @State private var showsignup:Bool = false
    var body: some View {
//        NavigationView{
            ZStack{
                //background
                Image("Rectangle 2083")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack{
                        Spacer()
                        Spacer()
                        Spacer()
                        //Untitled-1 1
                        HStack {
                            //1 LOGO ONLY 2
                            Image(uiImage: #imageLiteral(resourceName: "1 LOGO ONLY 2"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 79, height: 89)
                                .clipped()
                                .position(x: 70, y: 50)
                            
                            Image("Untitled-1 2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        }

                        .frame(width: 270, height: 140)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        .padding(.bottom,10)
                    VStack{
                        //Sign in with Facebook
                        Button(action: {
                            print("")
                         }){
                             ZStack{
                                RoundedRectangle(cornerRadius: 13)
                                     .fill(Color(#colorLiteral(red: 0.09803921729326248, green: 0.4627451002597809, blue: 0.8235294222831726, alpha: 1)))
                                 .frame(width: 304, height: 51)
                                 .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.10999999940395355)), radius:40, x:0, y:25)
                                    
                              //  HStack{
                                Image("facebook (6) 1").padding(.trailing,230)
                                  
                                    //Sign In with Facebook
                                     Text("   Sign In with Facebook").font(.custom("GothamRounded-Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.28)
                                        
                                //}
                            }.padding(.trailing,2)
                             .padding(.bottom,15)
                             }
                                       //Sign in with Google
                                        Button(action: {
                                             print("")
                                         }){
                                            
                                             ZStack{

                                                RoundedRectangle(cornerRadius: 13)
                                                     .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                 .frame(width: 304, height: 51)
                                                 .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.10999999940395355)), radius:40, x:0, y:25)
                                              //  HStack{
                                                    
                                               //google Logo
                                                   Image("gmailLogo").padding(.trailing,230)
                                                    //Sign In with Google
                                                    Text("Sign In with Google")
                                                        .font(.custom("GothamRounded-Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.37, green: 0.37, blue: 0.37, alpha: 1))).tracking(0.28)
                                               // }
                                            }.padding(.trailing,2)
                                    .padding(.bottom,15)
                                             }
                        Button(action: {
                                            print("")
                                        }){
                                            ZStack{
                                               //Rectangle 256
                                               RoundedRectangle(cornerRadius: 13)
                                                   .fill(LinearGradient(
                                                           gradient: Gradient(stops: [
                                                       .init(color: Color(#colorLiteral(red: 0.9450980424880981, green: 0.501960813999176, blue: 0.29411765933036804, alpha: 1)), location: 0),
                                                       .init(color: Color(#colorLiteral(red: 0.9372549057006836, green: 0.3176470696926117, blue: 0.3803921639919281, alpha: 1)), location: 1)]),
                                                           startPoint: UnitPoint(x: 0.28326169418655467, y: -0.549019003923215),
                                                           endPoint: UnitPoint(x: 0.9999999107919548, y: 2.6372552595508356)))
                                               .frame(width: 304, height: 57)
                                                   
                                             //  HStack{
                                                   Image("gmail").padding(.trailing,230)
                                                 
                                                   //Sign In with Email
                                                    Text("   Sign In with Email").font(.custom("GothamRounded-Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.28)
                                                       
                                               //}
                                            }
                                           }.padding(.trailing,2)
                        .padding(.bottom,15)
                        
                    }.padding(.bottom,50)
                                        
                   HStack{
                        //Don't have an Account ? Sign UP
                        Text("Don't have an Account ? ")
                       .font(.custom("GothamRounded-Medium", size: 14))
                       .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .padding(.bottom,   160)
//                    NavigationLink(destination: SignUp(), isActive: self.$showsignup){
                        Button(action: {
                            self.showsignup.toggle()
                        }) {
                            Text("Sign UP")
                            .underline()
                            .font(.custom("GothamRounded-Medium", size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .tracking(0.28)
                            .padding(.bottom,160)
                        }
                        .fullScreenCover(isPresented: $showsignup, content: SignUp.init)
//                    }

                   }
                    
                    
                }
            }

//        }
    }
}
