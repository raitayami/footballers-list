
import Foundation


class PotentialGreatestViewModel: ObservableObject{
    
    @Published var potentialGreatestFootballers = [Footballer]()
    
    init(){
        
        self.potentialGreatestFootballers = SecondDataService.getLocalData()
        
    }

    
}
