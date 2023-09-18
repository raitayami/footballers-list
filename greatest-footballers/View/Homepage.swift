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
                        ZStack{
                            Rectangle()
                                .frame(width: .infinity, height: 40)
                                .cornerRadius(15)
                                .padding()
                            
                            Text("View the greatest footballers")
                                .padding()
                                .foregroundColor(.white)
                        }
                        
                        
                    }

                    
                    NavigationLink {
                        PotentialGreatest()
                    } label: {
                        
                        ZStack{
                            Rectangle()
                                .frame(width: .infinity, height: 40)
                                .cornerRadius(15)
                                .padding()
                            
                            Text("View the potential greatest footballers")
                                .padding()
                                .foregroundColor(.white)
                        }
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
