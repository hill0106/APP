
import SwiftUI

struct Date: View {
    @Environment(\.presentationMode) var mode
    @State var xmark = false
    var body: some View {
        VStack{
            HStack(spacing: 250){
                Button(action: { self.mode.wrappedValue.dismiss()}, label: {
                    Image(systemName: "arrow.left")
                        .foregroundColor(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3843137323856354, blue: 0.3529411852359772, alpha: 1)))
                        .font(.largeTitle)
                        .padding(.bottom,50)
                        
                })
                
                Button(action: {}){
                    Image(systemName: "slider.vertical.3")
                        .foregroundColor(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3960784375667572, blue: 0.3450980484485626, alpha: 1)))
                        .font(.system(size: 30))
                        .padding(.bottom,50)
                }
            }
            Image("Angelica")
                .resizable()
                .frame(width: 287, height: 435)
                .padding()
            HStack(spacing: 50){
                Button(action: {self.xmark.toggle()})
                {
                    ZStack{
                        //Rectangle 256
                        RoundedRectangle(cornerRadius: 26.5)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 58, height: 58)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.15000000596046448)), radius:35, x:0, y:25)
                        Image(systemName: "xmark").foregroundColor(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3960784375667572, blue: 0.3450980484485626, alpha: 1)))
                            .frame(width: 10, height: 10)
                            .font(.body)
                    }
                }.fullScreenCover(isPresented: self.$xmark, content: Date2.init)
                ZStack {
            //Rectangle 271
                RoundedRectangle(cornerRadius: 26)
                .fill(LinearGradient(
                gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 0.9450980424880981, green: 0.501960813999176, blue: 0.29411765933036804, alpha: 1)), location: 0),
                .init(color: Color(#colorLiteral(red: 0.9372549057006836, green: 0.3176470696926117, blue: 0.3803921639919281, alpha: 1)), location: 1)]),
                startPoint: UnitPoint(x: 0.28326169418655467, y: -0.549019003923215),
                endPoint: UnitPoint(x: 0.9999999107919548, y: 2.6372552595508356)))
                .frame(width: 58, height: 58)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.15000000596046448)), radius: 35, x: 0, y: 25)
                    Image(systemName: "heart.fill").foregroundColor(.white).frame(width: 25, height: 25)
                }.shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.15000000596046448)), radius:35, x:0, y:25)


                    
            }.padding(.bottom,20)
            
        }
    }
}

struct Date_Previews: PreviewProvider {
    static var previews: some View {
        Date().previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
        Date().previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
    }
}

struct Date2: View {
    @Environment(\.presentationMode) var mode
    @State var match = false
    var body: some View {
        VStack{
            HStack(spacing: 250){
                Button(action: { self.mode.wrappedValue.dismiss()}, label: {
                    Image(systemName: "arrow.left")
                        .foregroundColor(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3843137323856354, blue: 0.3529411852359772, alpha: 1)))
                        .font(.largeTitle)
                        .padding(.bottom,50)
                        
                })
                
                Button(action: {}){
                    Image(systemName: "slider.vertical.3")
                        .foregroundColor(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3960784375667572, blue: 0.3450980484485626, alpha: 1)))
                        .font(.system(size: 30))
                        .padding(.bottom,50)
                }
            }
            Image("Emily")
                .resizable()
                .frame(width: 287, height: 435)
                .padding()
            HStack(spacing: 50){
                ZStack{
                    //Rectangle 256
                    RoundedRectangle(cornerRadius: 26.5)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 58, height: 58)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.15000000596046448)), radius:35, x:0, y:25)
                    Image(systemName: "xmark").foregroundColor(Color(#colorLiteral(red: 0.9411764740943909, green: 0.3960784375667572, blue: 0.3450980484485626, alpha: 1)))
                        .frame(width: 10, height: 10)
                        .font(.body)
                }
                Button(action:{self.match.toggle()}){
                    ZStack {
                //Rectangle 271
                    RoundedRectangle(cornerRadius: 26)
                    .fill(LinearGradient(
                    gradient: Gradient(stops: [
                    .init(color: Color(#colorLiteral(red: 0.9450980424880981, green: 0.501960813999176, blue: 0.29411765933036804, alpha: 1)), location: 0),
                    .init(color: Color(#colorLiteral(red: 0.9372549057006836, green: 0.3176470696926117, blue: 0.3803921639919281, alpha: 1)), location: 1)]),
                    startPoint: UnitPoint(x: 0.28326169418655467, y: -0.549019003923215),
                    endPoint: UnitPoint(x: 0.9999999107919548, y: 2.6372552595508356)))
                    .frame(width: 58, height: 58)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.15000000596046448)), radius: 35, x: 0, y: 25)
                        Image(systemName: "heart.fill").foregroundColor(.white).frame(width: 25, height: 25)
                    }.shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.15000000596046448)), radius:35, x:0, y:25)
                }.fullScreenCover(isPresented: self.$match, content: Match.init)

            }.padding(.bottom,20)
            
        }
    }
}
