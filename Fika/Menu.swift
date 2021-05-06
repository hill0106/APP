
import SwiftUI

struct Menu: View {
    @ObservedObject var homeData: HomeViewModel
    @StateObject var HomeModel1 = HomeViewModel()
    var body: some View {
         
    }
}

//struct Menu_Previews: PreviewProvider {
//    static var previews: some View {
//        Menu(homeData: $HomeModel).previewDevice(PreviewDevice(rawValue: "iPhone 8"))
//            .previewDisplayName("iPhone 8")
//    }
//}
