import SwiftUI

struct GreatestFootballersList: View {
    
    @ObservedObject var model = FootballerViewModel()
    
    var body: some View {
        
            List(model.greatestFootballers){ f in
                
                NavigationLink {
                    PlayerDetailView(player: f)
                } label: {
                    HStack(spacing: 20){
                        Image(f.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        Text(f.name)
                    }
                }
      
            }
    }
    
}

struct GreatestFootballersList_Previews: PreviewProvider {
    static var previews: some View {
        GreatestFootballersList()
    }
}
