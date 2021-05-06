import SwiftUI

struct Match: View {
    var body: some View {
        ZStack{
            Date2()
            Rectangle()
                .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).opacity(0.88)
            .frame(width: 575, height: 1012)
                .edgesIgnoringSafeArea(.all)
            VStack{
                //Its a Match !
                Text("Its a Match !").font(.custom("Gotham Rounded Book", size: 48)).foregroundColor(Color(#colorLiteral(red: 0.94, green: 0.32, blue: 0.38, alpha: 1)))
                    .padding()
                //You both liked each other
                Text("You both liked each other\n").font(.custom("Gotham Rounded Medium", size: 15)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .padding()
                HStack{
                    Image("man").resizable().frame(width: 157, height: 161)
                    Image("woman").resizable().frame(width: 157, height: 161)
                }.padding(.bottom,80)
                Button(action:{})
                {
                    ZStack{
                        //Rectangle 256
                        RoundedRectangle(cornerRadius: 80)
                            .fill(LinearGradient(
                                    gradient: Gradient(stops: [
                                .init(color: Color(#colorLiteral(red: 0.9450980424880981, green: 0.501960813999176, blue: 0.29411765933036804, alpha: 1)), location: 0),
                                .init(color: Color(#colorLiteral(red: 0.9372549057006836, green: 0.3176470696926117, blue: 0.3803921639919281, alpha: 1)), location: 1),
                                .init(color: Color(#colorLiteral(red: 0.9450980424880981, green: 0.501960813999176, blue: 0.29411765933036804, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.28326169418655467, y: -0.549019003923215),
                                    endPoint: UnitPoint(x: 0.9999999107919548, y: 2.6372552595508356)))
                        .frame(width: 307, height: 50)
                        //Start a Chat
                        Text("Start a Chat").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.28)
                    }
                }
                .padding()
                ZStack{
                    //Rectangle 256
                    RoundedRectangle(cornerRadius: 30)
                        .strokeBorder(LinearGradient(
                                gradient: Gradient(stops: [
                            .init(color: Color(#colorLiteral(red: 0.9450980424880981, green: 0.501960813999176, blue: 0.29411765933036804, alpha: 1)), location: 0),
                            .init(color: Color(#colorLiteral(red: 0.9372549057006836, green: 0.3176470696926117, blue: 0.3803921639919281, alpha: 1)), location: 0.7708333134651184)]),
                                startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 3)
                    .frame(width: 307, height: 50)
                    //Keep Swiping
                    Text("Keep Swiping").font(.custom("Gotham Rounded Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.28)
                }
            }
        }
    }
}

struct Match_Previews: PreviewProvider {
    static var previews: some View {
        Match()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
        Match()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
    }
}
