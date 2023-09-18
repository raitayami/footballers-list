import SwiftUI

struct Homepage: View {
    var body: some View {
        
            NavigationView{
                
                VStack{
                    
                    Text("Welcome to the \n Hall Of Fame \n for football")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                    
                    NavigationLink {
                        GreatestFootballersList()
                    } label: {
                        
                        Text("View the greatest footballers")
                            .padding()
                    }
                    
                    NavigationLink {
                        ContentView()
                    } label: {
                        
                        Text("View the potential greatest footballers")
                            .padding()

                    }
                }
                
            
            }
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
