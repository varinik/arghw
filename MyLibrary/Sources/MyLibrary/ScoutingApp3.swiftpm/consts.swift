//
//  consts.swift
//  ScoutingApp2
//
//  Created by VK on 3/4/23.
//

import Foundation
import SwiftUI

class const
{
    @StateObject public var names = ExampleModel()
    
}
class ExampleModel: ObservableObject {
    public var name: String = ""
    
}


