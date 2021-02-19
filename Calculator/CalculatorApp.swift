//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Faisal Hakim on 2/10/21.
//

import SwiftUI

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
                        ContentView().environmentObject(GlobalEnvironment())
        }
    }
}
