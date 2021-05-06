import SwiftUI

struct Places: View {
    @State var show = false
    var body : some View {
     
        ZStack{
            ZStack{
                   //Rectangle 2086
                   Rectangle()
                       .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                   .frame(width: 270, height: 650)
                   .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                   VStack(alignment: .leading, spacing: 30){
                       //New Taipei City
                       Text("New Taipei City").font(.custom("Gotham Rounded Bold", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.94, green: 0.4, blue: 0.34, alpha: 1))).tracking(0.36)
                       //Taipei
                       Text("Taipei").font(.custom("Gotham Rounded Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.35, green: 0.35, blue: 0.35, alpha: 1))).tracking(0.36)
                       //Taoyuan
                       Text("Taoyuan").font(.custom("Gotham Rounded Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.35, green: 0.35, blue: 0.35, alpha: 1))).tracking(0.36)
                       //Taichung
                       Text("Taichung").font(.custom("Gotham Rounded Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.35, green: 0.35, blue: 0.35, alpha: 1))).tracking(0.36)
                       //Chiayi
                       Text("Chiayi").font(.custom("Gotham Rounded Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.35, green: 0.35, blue: 0.35, alpha: 1))).tracking(0.36)
                       //Tainan
                       Text("Tainan").font(.custom("Gotham Rounded Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.35, green: 0.35, blue: 0.35, alpha: 1))).tracking(0.36)
                       //Kaoshiung
                       Text("Kaoshiung").font(.custom("Gotham Rounded Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.35, green: 0.35, blue: 0.35, alpha: 1))).tracking(0.36)
                           .padding(.bottom,100)
                       HStack{
                           Image("logout")
                               .resizable()
                               .frame(width: 28.2, height: 22)
                           //Logout
                           Text("Logout").font(.custom("Gotham Rounded Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.32, green: 0.32, blue: 0.32, alpha: 1))).tracking(0.36)
                       }
                   }.padding(.top,100)
                .padding(.trailing,50)
                ZStack{
                       //Rectangle 2088
                       Rectangle()
                           .fill(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3843137323856354, blue: 0.3529411852359772, alpha: 1)))
                       .frame(width: 270, height: 124)
                           .padding(.bottom,570)

                                   Button(action: {withAnimation(.easeIn){self.show.toggle()}}){
                                       Image(systemName: "line.horizontal.3")
                                        .resizable()
                                        .frame(width:23, height: 23).foregroundColor(.white)
                                        .padding(.trailing,200)
                                        .padding(.bottom,610)
                                   }.opacity(self.show ? 1:0)
                    HStack{
                               
                               //Rectangle 289
                               Image("boy")
                                   .resizable()
                                   .frame(width: 53, height: 52)
                                .padding(.bottom,550).padding(.leading,50)
                               VStack{
                                   //Jackson Lee
                                   Text("Jackson Lee").font(.custom("Gotham Rounded Bold", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                                   //PREMIUM MEMBER
                                   Text("PREMIUM MEMBER").font(.custom("Gotham Rounded Book", size: 12)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                       .padding(.top,10)
                               }.padding(.bottom,540)
                    }
                }
               }.padding(.trailing,110)
            .frame(width: UIScreen.main.bounds.width/1.2)
            .background(Color.white.opacity(0))
            .offset(x: self.show ? 0 : -UIScreen.main.bounds.width/1.2)
            Home(show: $show)
                .offset(x: self.show ? UIScreen.main.bounds.width/1.2:0 )
        }
                
                
    }
}

struct Places_Previews: PreviewProvider {
    static var previews: some View {
        Places()            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
        Places()            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
    }
}
    

    

