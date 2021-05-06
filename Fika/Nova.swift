
import SwiftUI

struct Nova: View {
    @Environment (\.presentationMode) var mode
    @State private var date = false
    var body: some View {
        ZStack{

            Image("Nova")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Button(action: { self.mode.wrappedValue.dismiss()}, label: {
                    Image(systemName: "arrow.left")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                })
                .padding(.trailing,250)
                Image("NOVA-1")
                    .padding(.bottom,100)
                    .padding(.top,180)
                Button(action:{self.date.toggle()}){
                    Image("join")
                }.fullScreenCover(isPresented: $date, content: Date.init)
                Button(action:{}){
                    Image("heading")
                }
            }.padding(.trailing,50)
        }
    }
}

struct Nova_Previews: PreviewProvider {
    static var previews: some View {
        Nova()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
       Nova()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
    }
}
