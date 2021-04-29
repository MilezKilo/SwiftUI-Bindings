//
//  ContentView.swift
//  SwiftUI Bindings
//
//  Created by Майлс on 16.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = ContentViewModel()
    
    @EnvironmentObject var settings : Settings
    
    var body: some View {
        NavigationView {
            VStack(spacing: 12) {
                
                if settings.isPasswordShown {
                    Text(viewModel.sensitiveData.password)
                }
                SensitiveDataView(password: $viewModel.sensitiveData.password)
                
                NavigationLink(
                    destination: DetailView(viewModel: viewModel)) {
                    Text("Navigate to detail view")
                }
                
                Spacer()
            }
            .padding()
            .navigationBarTitle("Content View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Settings())
    }
}
