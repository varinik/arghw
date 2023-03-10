import SwiftUI
import ScoutingApp2

struct tabview: View {
    @Binding var name: String
    var body: some View {
        TabView {
            auto(num: $name)
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }

            /*tele()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")*/
                //}
        }
    }
}
