
import Foundation


class Footballer: Identifiable, Decodable{
    
    var id: UUID?
    var name: String
    var image: String
    var position: String
    var appearances: Int
    var goals: Int
    var assists: Int
    var UCLgoals: Int
    var UCLassist: Int
    var worldCupGoals: Int
    var worldCupAssist: Int
    var trophies: Int
    var majorIndividualAwards: [String]
    var majorTrophies: [String]
    
}


//struct Goals{
//
//    var total: Int
//    var UCLgoals: Int
//    var worldCupGoals: Int
//    var domesticCupGoals: Int
//}
