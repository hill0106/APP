

import SwiftUI

struct Home : View {
    @State private var nova = false
    //@StateObject var HomeModel = HomeViewModel()
    @Binding var show : Bool
    var body: some View{
        ZStack{
            VStack{
                HStack(alignment: .center){
                    Button(action: {withAnimation(.easeIn){self.show.toggle()}}, label: {
                        VStack {
                        //Rectangle 285
                            RoundedRectangle(cornerRadius: 13)
                            .fill(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3960784375667572, blue: 0.3450980484485626, alpha: 1)))
                            .frame(width: 26, height: 3.4)

                        //Rectangle 284
                            RoundedRectangle(cornerRadius: 13)
                            .fill(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3960784375667572, blue: 0.3450980484485626, alpha: 1)))
                            .frame(width: 26, height: 3.4)
                                
                        //Rectangle 283
                            RoundedRectangle(cornerRadius: 13)
                            .fill(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3960784375667572, blue: 0.3450980484485626, alpha: 1)))
                            .frame(width: 26, height: 3.4)
                        }.padding(.trailing,20)
                    })
                        
                        
                    //001 2
                    Image("fika")
                        .resizable()
                        .frame(width: 230, height: 61)
                        .padding(.top,20)
                    Image(systemName: "slider.vertical.3")
                        .foregroundColor(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3960784375667572, blue: 0.3450980484485626, alpha: 1)))
                        .font(.system(size: 30))
                }
            //Where do you want to Meet ?
            Text("Where do you want to Meet ?").font(.custom("Eldwin Script Bold", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)))
            //Rectangle 256
            RoundedRectangle(cornerRadius: 13)
                .fill(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3960784375667572, blue: 0.3450980484485626, alpha: 1)))
            .frame(width: 41, height: 3)
            VStack{
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(1..<4){i in
                            ZStack{
                                
                                cardview(img: "img\(i)")
                                    .padding(3)
                                if(i==1){
                                    //Night Club
                                    Text("Night Club").font(.custom("Gotham Rounded Bold", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                }
                                else if(i==2){
                                    //Night Club
                                    Text("Cafe").font(.custom("Gotham Rounded Bold", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                }
                                else{
                                    Text("Restaurant").font(.custom("Gotham Rounded Bold", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                }
                                
                            }
                        }
                    }
                }
            }
            //Recommended Places for You
            Text("Recommended Places for You").font(.custom("Eldwin Script Bold", size: 19)).foregroundColor(Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.35, alpha: 1)))
            //Rectangle 256
            RoundedRectangle(cornerRadius: 13)
                .fill(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3960784375667572, blue: 0.3450980484485626, alpha: 1)))
            .frame(width: 41, height: 3)
            VStack{
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(1..<4){i in
                            ZStack{
                                cardview1(imgg: "imgg\(i)").padding(3)
                                if(i==1){
                                    cardview1().onTapGesture {
                                        self.nova.toggle()
                                    }
                                    Text("NOVA Night Club").font(.custom("Gotham Rounded Bold", size: 22))
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                       
                                    .fullScreenCover(isPresented: $nova, content: Nova.init)

                                }
                            }
                        }
                    }
                }
            }
            }.padding(.bottom,50)
            Spacer()

        }
    }
}


struct cardview : View{
    var img = ""
    var body : some View{
        VStack{
            Button(action: {}, label: {
                Image(img)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            })
            
        }.frame(width: 158, height: 114)
        .cornerRadius(20)

    }
}

struct cardview1 : View{
    var imgg = ""
    var shownova = false
    var body : some View{
        VStack{
                Image(imgg)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            
            
        }.frame(width: 231, height: 311)
        .cornerRadius(20)
        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.05000000074505806)), radius:15, x:0, y:0)
    }
}


