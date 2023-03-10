import SwiftUI
import ScoutingApp2
struct CCdata{
    //@State var result = ""
    
    @Binding var name: String
    @Binding var autos: String
    @Binding var teles: String
    @Binding var d: Bool
    @Binding var p: Bool
    @Binding var t: Int
    @Binding var pnum: Int
    @Binding var notes: String
    
    let file = "sample.txt"
    
    
    var dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
    
    func something() -> String{

        if dir != nil{
            
            let fileURL = dir?.appendingPathComponent("sample.txt")
            print(fileURL)
            
            var tt = ""
            //t += ExampleModel().name
            tt += "Number: "
            tt += name
            tt += "\nAuto: "
            tt += autos
            tt += "\nTele: "
            tt += teles
            tt += "\nDefending: "
            tt += String(d)
            tt += "\nPenelties: "
            tt += String(pnum)
            tt += "\nTechnical Penlties: "
            tt += String(t)
            tt += "\nNotes: "
            tt += notes
            
            
            
            //func createFile(atPath: String, contents: Data?, attributes: [FileAttributeKey : Any]?) -> Bool)
            do {
                
                try tt.write(to: fileURL!, atomically: false, encoding: .utf8)
            }
            
            catch {/* error handling here */}
            
            do {
                let result = try String(contentsOf: fileURL!, encoding: .utf8)
                print("THERE IS SOMETHIGNTHING")
                print("result:" + result)
            }
            catch {
                print(error)
                print("error reachedsnaldkfhw[ona   Q/O'EWQ")
                /* handle if there are any errors */}
        }
        
        return ""
    }
    
    
}
