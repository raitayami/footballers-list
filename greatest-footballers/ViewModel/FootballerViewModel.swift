import Foundation



class FootballerViewModel: ObservableObject{
    
    @Published var greatestFootballers = [Footballer]()
    
    init(){
        
//      let service = DataService()
        self.greatestFootballers = DataService.getLocalData()
        
    }
}
