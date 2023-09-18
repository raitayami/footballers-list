
import SwiftUI

struct PotentialGreatest: View {
    
    @ObservedObject var model = PotentialGreatestViewModel()

    var body: some View {
        List(model.potentialGreatestFootballers){ g in
            NavigationLink {
                PlayerDetailView(player: g)
            } label: {
                HStack(spacing: 20){
                    Image(g.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipped()
                        .cornerRadius(5)
                    Text(g.name)
                }
            }
        }
    }
}

struct PotentialGreatest_Previews: PreviewProvider {
    static var previews: some View {
        PotentialGreatest()
    }
}
