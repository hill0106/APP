//
//  School&Job.swift
//  Fika
//
//  Created by 邱孟儒 on 2021/3/23.
//

import SwiftUI

struct School_Job: View {
    @Environment(\.presentationMode) var pm
    @State private var school = ""
    @State private var job = ""
    @State private var signin:Bool = false
    @State private var hobby:Bool = false
    var body: some View {
            ZStack{
                //background
                Image("Rectangle 254")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    VStack{
                        Button(action: { self.pm.wrappedValue.dismiss()}, label: {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                        })
                        .padding(.trailing,300).padding(.bottom,50)
                        Text("Please enter your details")
                            .font(.custom("GothamRounded-Book", size: 25))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .padding(.bottom,70)
                           
                        //Rectangle 21
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 20, height: 3)
                        .shadow(color: Color(#colorLiteral(red: 0.3529411852359772, green: 0.21960784494876862, blue: 0.7372549176216125, alpha: 1)), radius:200, x:0, y:40)
                    }
                        
                    ZStack{
                    //Rectangle 254
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 322, height: 240)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.09000000357627869)), radius:85, x:0, y:25)
                        VStack{
                            VStack{
                                //school
                                HStack(spacing: 10){
                                    Image(systemName: "graduationcap")
                                    .foregroundColor(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)))
                                        .padding(.leading,60)
                                    
                                    TextField("My School Name", text: self.$school).font(.custom("GothamRounded-Medium", size: 14))
                                    
                                }
                                Divider().background(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)).opacity(0.3))
                                    .padding(.horizontal,40)

                            }
                            .padding(.horizontal)
                            .padding(.top,100)
                            VStack{
                                //job
                                HStack(spacing: 10){
                                    Image(systemName: "briefcase")
                                    .foregroundColor(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)))
                                        .padding(.leading,60)
                                    
                                    TextField("Job Title", text: self.$job).font(.custom("GothamRounded-Medium", size: 14))
                                    
                                }
                                Divider().background(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)).opacity(0.3))
                                    .padding(.horizontal,40)

                            }
                            .padding(.horizontal)
                            .padding(.top,20)
                        Button(action: {
                                self.hobby.toggle()
                            }){
                        ZStack {
                            //Rectangle 256
                                RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3843137323856354, blue: 0.3529411852359772, alpha: 1)))
                                .frame(width: 260, height: 51)
                                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.10999999940395355)), radius: 35, x: 0, y: 15)


                        //Skip
                            Text("Skip").font(.custom("GothamRounded-Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.32)
                                
                                }
                                .fullScreenCover(isPresented: $hobby, content: Hobby.init)
                        }.padding(.top,70)
                        .padding(.bottom,20)
                        }
                    }
                    //Already have an Account ? Sign In
                    HStack{
                            Text("Already have an Account ? ")
                            .font(.custom("GothamRounded-Medium", size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .padding(.top,10)
                            Button(action: {
                                self.signin.toggle()
                            }) {
                                Text("Sign In")
                                .font(.custom("GothamRounded-Medium", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .tracking(0.28)
                                .underline()
                                }
                            .padding(.top,10)
                            .fullScreenCover(isPresented: $signin, content: SignIn.init)
                    }
                    
                }
            }
    }
}

struct School_Job_Previews: PreviewProvider {
    static var previews: some View {
        School_Job()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
        School_Job()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
        School_Job()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            .previewDisplayName("iPhone 11")
    }
}
