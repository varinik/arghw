//
//  data.swift
//  ScoutingApp2
//
//  Created by VK on 2/25/23.
//

import Foundation
import SwiftUI

class data
{
    //@State var teamname: String
    @State public var name:String = "aaaaa"
    func writet()
    {
        //name = a
        print("printing name: ")
        print(name)
        let file = "sample.txt"
        
        
        var dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        
        func something() -> String{
            print("running")
            
           
            
            print("printing top: ")
            
            if dir != nil{
                
                let fileURL = dir?.appendingPathComponent("sample.txt")
                print(fileURL)
                
                var t = ""
                t += name
                print("printing name of team: ")
                print(name)
                /*t += text
                t += "\n"
                t += textm
                t += "\n"
                t += textb*/
                
                
                //func createFile(atPath: String, contents: Data?, attributes: [FileAttributeKey : Any]?) -> Bool)
                do {
                    
                    try t.write(to: fileURL!, atomically: false, encoding: .utf8)
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
            return "hello"
        }
    }
    
    func printtop(top: inout [String])
    {
        print("printing top")
        print("_________________________")
        for i in top{
            print(i)
        }
        print("_________________________")
    }
    func StT(top: inout [String]) ->String
    {
        print("printing top")
        print("_________________________")
        var text = ""
        for i in top{
            text+=i
        }
        print(text)
        print("_________________________")
        return text
    }
    func updateTop(index: Int, state: String, top: inout [String]){
        top[index] = state
        printtop(top:&top)
    }
    func updateMid(index: Int, state: String, top: inout [String]){
        top[index] = state
        printtop(top:&top)
    }
    func updateBot(index: Int, state: String, top: inout [String]){
        top[index] = state
        printtop(top:&top)
    }
    func changetext(top: inout [String]) -> String
    {
        var text = ""
        for i in top{
            text += i;
        }
        print("printint text: ______________" + text)
        return text
    }
    func changecharger(val: String) -> String
    {
        var text = val
        
        print("printint text: " + text)
        
        return text
    }
    
    func printtop1(top: inout String)
    {
        print("printing top")
        print("_________________________")
        for i in top
        {
            print(i)
        }
        print("_________________________")
    }
    
    func maket(text1: inout String, textm1: inout String, textb1: inout String, textc1: inout String) ->String
    {
        return "Top: " + text1 + "\nMiddle: " + textm1 + "\nBottom: " + textb1 + "\nCharger: " + textc1
    }
    

}


