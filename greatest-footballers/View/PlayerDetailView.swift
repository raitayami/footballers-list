import SwiftUI

struct PlayerDetailView: View {
    
    var player:Footballer
    
    var body: some View {
        
        ScrollView{
            
            Image(player.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .padding()
                .shadow(radius: 25)
            
            VStack(alignment: .center){
                Text(player.name)
                    .font(.title)
                    .bold()
                    .padding(.top, 10)
                
                HStack{
                    Text("APPS: " + String(player.appearances))
                    Text("|")
                    Text("GOALS: " + String(player.goals))
                    Text("|")
                    Text("ASSISTS: " + String(player.assists))

                }.padding()
                
                Text("Major Individual Awards")
                    .font(.title)
                    .underline()
                    .bold()
                    .padding(.bottom, 10)
                
                ForEach(player.majorIndividualAwards, id:\.self){
                    award in
                    
                    Text(award)
                        .padding(.top, 2)

                }
                
                Text("Major Trophies")
                    .font(.title)
                    .underline()
                    .bold()
                    .padding([.top, .bottom], 10)
                
                ForEach(player.majorTrophies, id:\.self){
                    trophy in
                    
                    Text(trophy)
                        .padding(.top, 2)
                }
            }
        }
    }
}




struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = FootballerViewModel()
        PlayerDetailView(player: model.greatestFootballers[0])
    }
}
