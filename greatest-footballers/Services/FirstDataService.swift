
import Foundation


class FirstDataService{
    
    
    static func getLocalData() -> [Footballer]{
        
        let pathString = Bundle.main.path(forResource: "greatestFootballers", ofType: "json")
        
        guard pathString != nil else{
            return [Footballer]()
        }
        
        let url = URL(filePath: pathString!)
        
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do{
                let footballerData = try decoder.decode([Footballer].self, from: data)
                
                for f in footballerData{
                    f.id = UUID()
                }
                
                return footballerData
            }
            catch{
                print(error)
            }

        }
        catch{
            print(error)

        }

        return [Footballer]()
        
    }
}
