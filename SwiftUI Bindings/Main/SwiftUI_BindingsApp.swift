//
//  SwiftUI_BindingsApp.swift
//  SwiftUI Bindings
//
//  Created by Майлс on 16.04.2021.
//

import SwiftUI

@main
struct SwiftUI_BindingsApp: App {
    
    @StateObject var settings = Settings()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(settings)
        }
    }
}
