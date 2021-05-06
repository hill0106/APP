
import SwiftUI

struct Hobby: View {
    @State private var photo:Bool = false
    @Environment(\.presentationMode) var mode
    @State private var x1 = false
    @State private var x11 = false
    @State private var x2 = false
    @State private var x12 = false
    @State private var x3 = false
    @State private var x13 = false
    @State private var x4 = false
    @State private var x14 = false
    @State private var x5 = false
    @State private var x15 = false
    @State private var x6 = false
    @State private var x16 = false
    @State private var x7 = false
    @State private var x17 = false
    @State private var x8 = false
    @State private var x18 = false
    @State private var x9 = false
    @State private var x19 = false
    @State private var x10 = false
    @State private var x20 = false
    @State private var x21 = false
    @State private var x22 = false
    @State private var x23 = false
    @State private var x24 = false
    var body: some View {
        VStack{

            ZStack{
            Rectangle()
                .fill(Color.white)
                .frame(width: 342, height: 525, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                VStack(spacing:20){
                    Button(action: { self.mode.wrappedValue.dismiss()}, label: {
                        Image(systemName: "arrow.left")
                            .foregroundColor(Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)))
                            .font(.largeTitle)
                    }).padding(.top,120)
                    .padding(.trailing,300)
                    //Passions
                    Text("Passions").font(.custom("GothamRounded-Medium", size: 29)).foregroundColor(Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)))
                        
                    HStack(spacing:1){
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Movies").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x1 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }
                            .onTapGesture {
                                self.x1.toggle()
                            }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Music").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x2 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x2.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Art").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x3 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x3.toggle()
                        }
                        
                    }
                    HStack(spacing:1){
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Dance").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x4 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x4.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Netflix").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x5 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x5.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Eat").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x6 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x6.toggle()
                        }
                    }
                    HStack(spacing:1){
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Baseball").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x7 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x7.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Hiking").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x8 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x8.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Games").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x9 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x9.toggle()
                        }
                    }
                    HStack(spacing:1){
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Anime").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x10 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x10.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Working").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x11 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x11.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Cars").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x12 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x12.toggle()
                        }
                    }
                    HStack(spacing:1){
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Gym").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x13 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x13.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Cooking").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x14 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x14.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Youtube").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x15 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x15.toggle()
                        }
                    }
                    HStack(spacing:1){
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Study").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x16 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x16.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Instagram").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x17 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x17.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("NBA").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x18 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x18.toggle()
                        }
                    }
                    HStack(spacing:1){
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Clubbing").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x19 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x19.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Drinking").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x20 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x20.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Make Up").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x21 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x21.toggle()
                        }
                    }
                    HStack(spacing:1){
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Night Market").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x22 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x22.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("K-Pop").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x23 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x23.toggle()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)))
                            .frame(width: 107.5, height: 40)
                                .overlay(
                                    Text("Scoccer").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.4, blue: 0.35, alpha: 1))).tracking(0.28))
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(x24 ? Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)) :Color(#colorLiteral(red: 1, green: 0.9372549057006836, blue: 0.9333333373069763, alpha: 1)).opacity(0))
                                .padding(.leading,100)
                                .padding(.bottom,20)
                        }.onTapGesture {
                            self.x24.toggle()
                        }
                    }
                }
                .padding(.bottom,5)
            }
            Button(action:{
                self.photo.toggle()})
            {
            ZStack {
                //Rectangle 256
                    RoundedRectangle(cornerRadius: 13)
                    .fill(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3843137323856354, blue: 0.3529411852359772, alpha: 1)))
                    .frame(width: 304, height: 57)

                        //Continue
                        Text("Continue")
                        .font(.custom("GothamRounded-Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.32)
                    }
                    .fullScreenCover(isPresented: $photo, content: Photos.init)
            }.padding(.bottom,130)
        }
    }
}

struct Hobby_Previews: PreviewProvider {
    static var previews: some View {
        Hobby()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
        Hobby()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
        Hobby()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
            .previewDisplayName("iPhone SE")
    }
}
