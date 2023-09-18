import Foundation



class FootballerViewModel: ObservableObject{
    
    @Published var greatestFootballers = [Footballer]()
    
    init(){
        
        self.greatestFootballers = FirstDataService.getLocalData()
        
    }
}
