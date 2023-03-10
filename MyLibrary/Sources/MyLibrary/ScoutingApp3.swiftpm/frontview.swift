import SwiftUI
import UIKit
import ScoutingApp2

var showDetails = false;
var teamNameToAccessLater: String = ""


struct frontView: View{
    //@State public var g:String = name
    @State var s :String = ""
    @State public var show: Bool = false
    @State public var selectedColor: String = "Red1"
    @State public var showAct: Bool = true
    let colors = ["Red1", "Red2", "Red3", "Blue1", "Blue2", "Blue3"]
    func setCleared() {
        teamNameToAccessLater = "" //couldve used closure
    }
    
    func okay() {
        
        print("ok") //clojrie? could be used
        showDetails.toggle()
    }
    var body: some View {
        NavigationView(){
            Text("")
            
            VStack(alignment:.center){
            
                VStack{
                    Image(systemName: "note.text.badge.plus")
                        .font(.system(size: 70))
                        .foregroundColor(.teal)
                    Text("\n")
                    Picker("Team Color: ", selection: $selectedColor) {
                        ForEach(colors, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.menu).multilineTextAlignment(.center).fixedSize().font(.title3)
                    Text("Team Being Scouted")
                        .foregroundColor(.teal)
                        .bold()
                        .font(.largeTitle)
                    Text("")
                    
                    TextField("Team Number", text: $s).multilineTextAlignment(.center)
                        .foregroundColor(.blue)
                    
                        .font(.system(size: 25))
                        .monospacedDigit()
                        .textInputAutocapitalization(.characters)
                        .minimumScaleFactor(4)
                    Text("")
                    //data().getteamname(a: g)
                    
                
                    var showDetails = false;
                    Text("\n")
                    //da()
                    
                }
                //tabview()
                NavigationLink(destination: tabview(name: $s)){
                    
                    HStack(alignment: .bottom){Text("Next Page")}
                }
                
                
                    
                
            }
            
            
        }
        .navigationBarHidden(true)
        
            
            
        
        }
    
    }



