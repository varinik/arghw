import SwiftUI
import ScoutingApp2
    
    /*@State public var midArray: [String] = []
     @State public var botArray: [String] = []*/

var text1 : String = "NNNNNNN"
var textm1 : String = "NNNNNNN"
var textb1 : String = "NNNNNNN"
var textc1 : String = "N"
    //public var teamname: String = ""





    struct ImageOverlayTop1: View {
        //makes the buttons for the top of the grid; buttons are limited to either cone or cube, and the nothing option
        //var for each of the buttons
        
        
        @State var val :String = "circle.dotted"
        @State var val1 :String = "circle.dotted"
        @State var val2 :String = "circle.dotted"
        @State var val3 :String = "circle.dotted"
        @State var val4 :String = "circle.dotted"
        @State var val5 :String = "circle.dotted"
        @State var val6 :String = "circle.dotted"
        @State var val7 :String = "circle.dotted"
        @State var val8 :String = "circle.dotted"
        
        @State var top = ["N", "N", "N", "N", "N", "N", "N", "N", "N"]
        
        
       
        //@State public var topreturn: [String] = []
        
        
    
        var body: some View {
            Menu {
                Button(action: {
                    val = "cone.fill"
                    print(val)
                    //top = data().change(val:val, pos:0, top:top)
                    data().updateTop(index: 0, state: "C", top:&top)
                    text1 = data().changetext(top: &top)
                    
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    val = "circle.dotted"
                    print(val)
                    //data().change(val:val, pos:0)
                    data().updateTop(index: 0, state: "N", top:&top)
                    text1 = data().changetext(top: &top)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                
                Label("", systemImage: val)
            }.position(x:210, y:50).font(.system(size: 40, weight: .bold)).foregroundColor(.red)
            
            //___________________________________
            
            Menu {
                Button(action: {
                    val1 = "cube.fill"
                    data().updateTop(index: 1, state: "U", top:&top)
                    text1 = data().changetext(top: &top)
                    print(val1)
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    val1 = "circle.dotted"
                    print(val1)
                    text1 = data().changetext(top: &top)
                    //data().change(val:val1, pos:1)
                    data().updateTop(index: 1, state: "N", top:&top)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                Label("", systemImage: val1)
            }.position(x:320, y:50).font(.system(size: 40, weight: .bold)).foregroundColor(.red)
            
            //___________________________
            
            Menu {
                Button(action: {
                    val2 = "cone.fill"
                    print(val2)
                    data().updateTop(index: 2, state: "C", top:&top)
                    text1 = data().changetext(top: &top)
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    val2 = "circle.dotted"
                    print(val2)
                    data().updateTop(index: 2, state: "N", top:&top)
                    text1 = data().changetext(top: &top)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                Label("", systemImage: val2)
            }.position(x:400, y:50).font(.system(size: 40, weight: .bold)).foregroundColor(.red)
            
            //_________________________________
            
            Menu {
                Button(action: {
                    val3 = "cone.fill"
                    print(val3)
                    data().updateTop(index: 3, state: "C", top:&top)
                    text1 = data().changetext(top: &top)
                    
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    val3 = "circle.dotted"
                    print(val3)
                    data().updateTop(index: 3, state: "N", top:&top)
                    text1 = data().changetext(top: &top)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                Label("", systemImage: val3)
            }.position(x:500, y:50).font(.system(size: 40, weight: .bold)).foregroundColor(.red)
            
            //_____________________________________________
            
            Menu {
                
                Button(action: {
                    //changeVal(&top, valu: "cube.fill")
                    //print(top.val)
                    val4 = "cube.fill"
                    print(val4)
                    data().updateTop(index: 4, state: "U", top:&top)
                    text1 = data().changetext(top: &top)
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    //changeVal(&top, valu: "circle.dotted")
                    val4 = "circle.dotted"
                    print(val4)
                    data().updateTop(index: 4, state: "N", top:&top)
                    text1 = data().changetext(top: &top)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                
                Label("", systemImage: val4)
                //probLY BY VALUE
            }.position(x:610, y:50).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            //________________________________________
            
            Menu {
                Button(action: {
                    val5 = "cone.fill"
                    print(val5)
                    data().updateTop(index: 5, state: "C", top:&top)
                    text1 = data().changetext(top: &top)
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                
                Button(action: {
                    val5 = "circle.dotted"
                    print(val5)
                    data().updateTop(index: 5, state: "N", top:&top)
                    text1 = data().changetext(top: &top)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                Label("", systemImage: val5)
            }.position(x:700, y:50).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            
            //________________________________________
            
            Menu {
                Button(action: {
                    val6 = "cone.fill"
                    print(val6)
                    data().updateTop(index: 6, state: "C", top:&top)
                    text1 = data().changetext(top: &top)
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    val6 = "circle.dotted"
                    print(val6)
                    data().updateTop(index: 6, state: "N", top:&top)
                    text1 = data().changetext(top: &top)
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                Label("", systemImage: val6)
            }.position(x:800,y:50).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            
            //________________________________________
            
            Menu {
                
                Button(action: {
                    val7 = "cube.fill"
                    print(val7)
                    data().updateTop(index: 7, state: "U", top:&top)
                    text1 = data().changetext(top: &top)
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    val7 = "circle.dotted"
                    print(val7)
                    data().updateTop(index: 7, state: "N", top:&top)
                    text1 = data().changetext(top: &top)
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                Label("", systemImage: val7)
                
            }.position(x:920, y:50).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            //________________________________________
            
            Menu {
                Button(action: {
                    val8 = "cone.fill"
                    print(val8)
                    data().updateTop(index: 8, state: "C", top:&top)
                    text1 = data().changetext(top: &top)
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                
                Button(action: {
                    val8 = "circle.dotted"
                    print(val8)
                    data().updateTop(index: 8, state: "N", top:&top)
                    text1 = data().changetext(top: &top)
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
                
            } label: {
                Label("", systemImage: val8)
            }.position(x:990, y:50).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            
            //________________________________________
            
            
        }
        //func gettop()->Binding<[String]>{print("returning top"); return $top}

                
        
    }
    struct ImageOverlayMiddle1: View {
        //ne var for each one,t est
        @State public var val :String = "circle.dotted"
        @State public var val1 :String = "circle.dotted"
        @State public var val2 :String = "circle.dotted"
        @State public var val3 :String = "circle.dotted"
        @State public var val4 :String = "circle.dotted"
        @State public var val5 :String = "circle.dotted"
        @State public var val6 :String = "circle.dotted"
        @State public var val7 :String = "circle.dotted"
        @State public var val8 :String = "circle.dotted"
        @State var mid = ["N", "N", "N", "N", "N", "N", "N", "N", "N"]
        var body: some View {
            Menu {
                Button(action: {
                    val = "cone.fill"
                    print(val)
                    data().updateMid(index: 0, state: "C", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                    
                    
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    val = "circle.dotted"
                    print(val)
                    data().updateMid(index: 0, state: "N", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                
                Label("", systemImage: val)
            }.position(x:210, y:140).font(.system(size: 40, weight: .bold)).foregroundColor(.red)
            
            //___________________________________
            
            Menu {
                Button(action: {
                    val1 = "cube.fill"
                    print(val1)
                    data().updateMid(index: 1, state: "U", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    val1 = "circle.dotted"
                    print(val1)
                    data().updateMid(index: 1, state: "N", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                Label("", systemImage: val1)
            }.position(x:320, y:140).font(.system(size: 40, weight: .bold)).foregroundColor(.red)
            
            //___________________________
            
            Menu {
                Button(action: {
                    val2 = "cone.fill"
                    print(val)
                    data().updateMid(index: 2, state: "C", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    val2 = "circle.dotted"
                    print(val)
                    data().updateMid(index: 2, state: "N", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                Label("", systemImage: val2)
            }.position(x:400, y:140).font(.system(size: 40, weight: .bold)).foregroundColor(.red)
            
            //_________________________________
            
            Menu {
                Button(action: {
                    val3 = "cone.fill"
                    print(val3)
                    data().updateMid(index: 3, state: "C", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                    
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    val3 = "circle.dotted"
                    print(val)
                    data().updateMid(index: 3, state: "N", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                Label("", systemImage: val3)
            }.position(x:500, y:140).font(.system(size: 40, weight: .bold)).foregroundColor(.red)
            
            //_____________________________________________
            
            Menu {
                
                Button(action: {
                    
                    val4 = "cube.fill"
                    print(val4)
                    data().updateMid(index: 4, state: "U", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    val4 = "circle.dotted"
                    print(val4)
                    data().updateMid(index: 4, state: "N", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                
                Label("", systemImage: val4)
            }.position(x:610,y:140).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            //________________________________________
            
            Menu {
                Button(action: {
                    val5 = "cone.fill"
                    print(val5)
                    data().updateMid(index: 5, state: "C", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                
                Button(action: {
                    val5 = "circle.dotted"
                    print(val5)
                    data().updateMid(index: 5, state: "N", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                Label("", systemImage: val5)
            }.position(x:700,y:140).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            
            //________________________________________
            
            Menu {
                Button(action: {
                    val6 = "cone.fill"
                    print(val6)
                    data().updateMid(index: 6, state: "U", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    val6 = "circle.dotted"
                    print(val6)
                    data().updateMid(index: 6, state: "N", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                Label("", systemImage: val6)
            }.position(x:800,y:140).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            
            //________________________________________
            
            Menu {
                
                Button(action: {
                    val7 = "cube.fill"
                    print(val7)
                    data().updateMid(index: 7, state: "C", top:&mid)
                    textm1 = data().changetext(top: &mid)
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    val7 = "circle.dotted"
                    print(val7)
                    data().updateMid(index: 7, state: "N", top:&mid)
                    textm1 = data().changetext(top: &mid)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                Label("", systemImage: val7)
                
            }.position(x:920, y:140).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            //________________________________________
            
            Menu {
                Button(action: {
                    val8 = "cone.fill"
                    print(val8)
                    data().updateMid(index: 8, state: "C", top:&mid)
                    textm1 = data().changetext(top: &mid)
                                    }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                
                Button(action: {
                    val8 = "circle.dotted"
                    print(val8)
                    data().updateMid(index: 8, state: "N", top:&mid)
                    textm1 = data().changetext(top: &mid)

                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
                
            } label: {
                Label("", systemImage: val8)
            }.position(x:990, y:140).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            
            //________________________________________
            
        }
        
        
    }
    
    struct chargerOverlay1: View {
        @State var val :String = "square"
        var body: some View {
            Menu {
                Button(action: {
                    //changeVal(&top, valu: "cone.fill")//no consume whietspace
                    val = "square.fill"
                    print(val)
                    textc1 = data().changecharger(val: "F")
                    //yclic since one btton :sadn:
                }, label: {
                    Label("Completely On", systemImage: "square.fill")
                })
                Button(action: {
                    //changeVal(&top, valu: "cube.fill")
                    //print(top.val)
                    val = "square.lefthalf.filled"
                    textc1 = data().changecharger(val: "HF")
                    print(val)
                }, label: {
                    Label("Half On", systemImage: "square.lefthalf.filled")
                })
                Button(action: {
                    //changeVal(&top, valu: "circle.dotted")
                    val = "square"
                    print(val)
                    textc1 = data().changecharger(val: "N")
                }, label: {
                    Label("Not On", systemImage: "square")
                })
            } label: {
                
                Label("", systemImage: val)
                //probLY BY VALUE
            }.position(x:-750, y:550).font(.system(size: 100, weight: .bold)).foregroundColor(.yellow)
            
            
        }
        
    }
    
    struct ImageOverlayBottom1: View {
        //ne var for each one,t est
        @State var val :String = "circle.dotted"
        @State var val1 :String = "circle.dotted"
        @State var val2 :String = "circle.dotted"
        @State var val3 :String = "circle.dotted"
        @State var val4 :String = "circle.dotted"
        @State var val5 :String = "circle.dotted"
        @State var val6 :String = "circle.dotted"
        @State var val7 :String = "circle.dotted"
        @State var val8 :String = "circle.dotted"
        @State var bot = ["N", "N", "N", "N", "N", "N", "N", "N", "N"]
        var body: some View {
            
            //Button("Top1"){print("hi")}
            Menu {
                Button(action: {
                    //changeVal(&top, valu: "cone.fill")//no consume whietspace
                    
                    val = "cone.fill"
                    print(val)
                    data().updateBot(index: 0, state: "C", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    
                    //yclic since one btton :sadn:
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    //changeVal(&top, valu: "cube.fill")
                    //print(top.val)
                    val = "cube.fill"
                    print(val)
                    
                    data().updateBot(index: 0, state: "U", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    //changeVal(&top, valu: "circle.dotted")
                    val = "circle.dotted"
                    print(val)
                    data().updateBot(index: 0, state: "N", top:&bot)
                    textb1 = data().changetext(top: &bot)
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                
                Label("", systemImage: val)
                //probLY BY VALUE
            }.position(x:210, y:300).font(.system(size: 40, weight: .bold)).foregroundColor(.red)
            
            Menu {
                Button(action: {
                    //changeVal(&top, valu: "cone.fill")//no consume whietspace
                    val1 = "cone.fill"
                    print(val1)
                    data().updateBot(index: 1, state: "C", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    //TODO finish this part
                    //yclic since one btton :sadn:
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    //changeVal(&top, valu: "cube.fill")
                    //print(top.val)
                    val1 = "cube.fill"
                    data().updateBot(index: 1, state: "U", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    print(val1)
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    //changeVal(&top, valu: "circle.dotted")
                    val1 = "circle.dotted"
                    print(val1)
                    data().updateBot(index: 1, state: "N", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                
                Label("", systemImage: val1)
                //probLY BY VALUE
            }.position(x:320, y:300).font(.system(size: 40, weight: .bold)).foregroundColor(.red)
            Menu {
                Button(action: {
                    //changeVal(&top, valu: "cone.fill")//no consume whietspace
                    val2 = "cone.fill"
                    print(val2)
                    data().updateBot(index: 2, state: "C", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    //yclic since one btton :sadn:
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    //changeVal(&top, valu: "cube.fill")
                    //print(top.val)
                    val2 = "cube.fill"
                    data().updateBot(index: 2, state: "U", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    print(val2)
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    //changeVal(&top, valu: "circle.dotted")
                    val2 = "circle.dotted"
                    data().updateBot(index: 2, state: "N", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    print(val2)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                
                Label("", systemImage: val2)
                //probLY BY VALUE
            }.position(x:400, y:300).font(.system(size: 40, weight: .bold)).foregroundColor(.red)
            Menu {
                Button(action: {
                    //changeVal(&top, valu: "cone.fill")//no consume whietspace
                    val3 = "cone.fill"
                    data().updateBot(index: 3, state: "C", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    print(val3)
                    
                    //yclic since one btton :sadn:
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    //changeVal(&top, valu: "cube.fill")
                    //print(top.val)
                    val3 = "cube.fill"
                    print(val3)
                    data().updateBot(index: 3, state: "U", top:&bot)
                    textb1 = data().changetext(top: &bot)
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    //changeVal(&top, valu: "circle.dotted")
                    val3 = "circle.dotted"
                    print(val3)
                    data().updateBot(index: 3, state: "N", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                
                Label("", systemImage: val3)
                //probLY BY VALUE
            }.position(x:500, y:300).font(.system(size: 40, weight: .bold)).foregroundColor(.red)
            Menu {
                Button(action: {
                    //changeVal(&top, valu: "cone.fill")//no consume whietspace
                    val4 = "cone.fill"
                    print(val4)
                    data().updateBot(index: 4, state: "C", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    //yclic since one btton :sadn:
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    //changeVal(&top, valu: "cube.fill")
                    //print(top.val)
                    val4 = "cube.fill"
                    print(val4)
                    data().updateBot(index: 3, state: "U", top:&bot)
                    textb1 = data().changetext(top: &bot)
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    //changeVal(&top, valu: "circle.dotted")
                    val4 = "circle.dotted"
                    print(val4)
                    data().updateBot(index: 4, state: "N", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                
                Label("", systemImage: val4)
                //probLY BY VALUE
            }.position(x:600,y:300).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            Menu {
                Button(action: {
                    //changeVal(&top, valu: "cone.fill")//no consume whietspace
                    val5 = "cone.fill"
                    data().updateBot(index: 5, state: "C", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    print(val5)
                    
                    //yclic since one btton :sadn:
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    //changeVal(&top, valu: "cube.fill")
                    //print(top.val)
                    val5 = "cube.fill"
                    data().updateBot(index: 5, state: "U", top:&bot)
                    print(val5)
                    textb1 = data().changetext(top: &bot)
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    //changeVal(&top, valu: "circle.dotted")
                    val5 = "circle.dotted"
                    print(val5)
                    data().updateBot(index: 5, state: "N", top:&bot)
                    textb1 = data().changetext(top: &bot)
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                
                Label("", systemImage: val5)
                //probLY BY VALUE
            }.position(x:700,y:300).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            Menu {
                Button(action: {
                    //changeVal(&top, valu: "cone.fill")//no consume whietspace
                    val6 = "cone.fill"
                    print(val6)
                    data().updateBot(index: 6, state: "C", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    //yclic since one btton :sadn:
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    //changeVal(&top, valu: "cube.fill")
                    //print(top.val)
                    val6 = "cube.fill"
                    print(val6)
                    data().updateBot(index: 6, state: "U", top:&bot)
                    textb1 = data().changetext(top: &bot)
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    //changeVal(&top, valu: "circle.dotted")
                    val6 = "circle.dotted"
                    print(val6)
                    data().updateBot(index: 6, state: "N", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                
                Label("", systemImage: val6)
                //probLY BY VALUE
            }.position(x:800,y:300).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            Menu {
                Button(action: {
                    //changeVal(&top, valu: "cone.fill")//no consume whietspace
                    val7 = "cone.fill"
                    print(val7)
                    data().updateBot(index: 7, state: "C", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    //yclic since one btton :sadn:
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    //changeVal(&top, valu: "cube.fill")
                    //print(top.val)
                    val7 = "cube.fill"
                    print(val7)
                    data().updateBot(index: 7, state: "U", top:&bot)
                    textb1 = data().changetext(top: &bot)
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    //changeVal(&top, valu: "circle.dotted")
                    val7 = "circle.dotted"
                    data().updateBot(index: 7, state: "N", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    print(val7)
                    
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                
                Label("", systemImage: val7)
                //probLY BY VALUE
            }.position(x:920, y:300).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            Menu {
                Button(action: {
                    //changeVal(&top, valu: "cone.fill")//no consume whietspace
                    val8 = "cone.fill"
                    print(val8)
                    data().updateBot(index: 8, state: "C", top:&bot)
                    textb1 = data().changetext(top: &bot)
                    //yclic since one btton :sadn:
                }, label: {
                    Label("change to cone", systemImage: "cone")
                })
                Button(action: {
                    //changeVal(&top, valu: "cube.fill")
                    //print(top.val)
                    val8 = "cube.fill"
                    print(val8)
                    data().updateBot(index: 8, state: "U", top:&bot)
                    textb1 = data().changetext(top: &bot)
                }, label: {
                    Label("change to cube", systemImage: "cube")
                })
                Button(action: {
                    //changeVal(&top, valu: "circle.dotted")
                    val8 = "circle.dotted"
                    data().updateBot(index: 8, state: "N", top:&bot)
                    print(val8)
                    textb1 = data().changetext(top: &bot)
                }, label: {
                    Label("change to nothing", systemImage: "circle.dotted")
                })
            } label: {
                
                Label("", systemImage: val8)
                //probLY BY VALUE
            }.position(x:990, y:300).font(.system(size: 40, weight: .bold)).foregroundColor(.red).onTapGesture {
                print("please work")
            }
            //
            
            
        }
    }

///Working on making the TXT
    
struct maket12: View
{
    @State var flip: Bool = false
    @Binding var num: String
    @Binding var autos: String
    @State var t: String = text1
    var body: some View
    {
        Button("Done"){flip = true; t = "\nTop: " + text1 + "\nMiddle: " + textm1 + "\nBottom: " + textb1; print(t)}
            .opacity(flip ? 0 : 1)
            .position(x:100, y:400)
            .font(.system(size: 40, weight: .bold)).foregroundColor(.red)
        if(flip == true){NavigationLink(destination: endview(num: $num, autos: $autos, teles: $t)){Text("Next Page").position(x:0, y:400).font(.system(size: 40, weight: .bold)).foregroundColor(.red)}}
    }
}


struct tele: View {
    @State var showDetails = false
    @Binding var name: String
    @Binding var autos: String
    @State var t: String = "\nTop: " + text1 + "\nMiddle: " + textm1 + "\nBottom: " + textb
    + "\nCharger: " + textc1
    
    var body: some View {
        //Color.gray
        
        
        HStack(alignment: .top, spacing: nil){
            Image("image-1").resizable().scaledToFit()
                .position(x:600, y:155)
                .frame(width: 1100, height: 900, alignment: .bottomLeading)
                .overlay(ImageOverlayTop1(), alignment: .bottomTrailing)
                .overlay(ImageOverlayMiddle1(), alignment: .bottomTrailing)
                .overlay(ImageOverlayBottom1(), alignment: .bottomTrailing)
            //.overlay(CCdata(), alignment: .bottomTrailing)
            
            Image("charging").resizable().scaledToFit().fixedSize()
                .position(x:-700, y:600)
                .frame(width: 10, height: 30, alignment: .bottomLeading)
                .overlay(chargerOverlay1(), alignment: .bottomTrailing)
                .aspectRatio(contentMode: .fit)
            
            
                .font(.system(size: 40, weight: .bold)).foregroundColor(.red)
            
            maket12(num: $name,autos: $autos)
            
            
            
            
        }
        
    }
  
}








