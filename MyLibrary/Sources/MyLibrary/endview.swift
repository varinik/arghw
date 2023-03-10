import SwiftUI
struct endview: View {
    @Binding var num: String
    @Binding var autos: String
    @Binding var teles: String
   
    @State private var notes : String = "Notes About the Team"
    @State private var chosen : String = "defending"
    @State private var defending: Bool = false
    @State private var penalizedRobotCode: Bool = false
    @State private var technicalPenalties: Int = 0
    @State private var pens: Int = 0
    @State private var techPens: Int = 0
   
    func increment() {
        pens += 1
    }//WHY ARETHE PARAETERS IMMUTABLE
    //THE PARAMETERS SHOULDNOT BEIMUTABEL
   
    //bad code
    func incrementTech() {
        techPens += 1
    } //this makes me sad
   
    func decrementTech() {
        if (techPens != 0) {
            techPens -= 1
        }
    }
    func decrement() {
        if (pens != 0) {
            pens -= 1
        }
    }
   
    var body: some View {
       
        VStack {
            Form {
                Text("Analysis: ").font(.system(size: 40))
                Toggle(isOn: $defending) {
                    Text("Defending?")
                }
                Toggle(isOn: $penalizedRobotCode) {
                    Text("Penalty Of Robot?")
                }
                Stepper {
                    Text("Technical Penalties: " + String(techPens))
                } onIncrement: {
                    incrementTech()
                } onDecrement: {
                    decrementTech()
                }
                Stepper {
                    Text("Penalties: " + String(pens))
                } onIncrement: {
                    increment()
                } onDecrement: {
                    decrement()
                }
                TextEditor(text: $notes)
            }
            Button("DONE") {
                showDetails.toggle()
                print(showDetails)
                CCdata(name: $num, autos: $autos, teles: $teles, d: $defending, p: $penalizedRobotCode, t: $techPens, pnum: $pens, notes: $notes).something()
                
            }
            .font(.system(size: 40, weight: .bold)).foregroundColor(.red)
            
            
        }
    }
}
