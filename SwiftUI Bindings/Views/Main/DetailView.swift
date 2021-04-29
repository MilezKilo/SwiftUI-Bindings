//
//  DetailView.swift
//  SwiftUI Bindings
//
//  Created by Майлс on 16.04.2021.
//

import SwiftUI

struct DetailView: View {
    
    @ObservedObject var viewModel : ContentViewModel
    
    var body: some View {
        VStack {
            
            SensitiveDataView(password: $viewModel.sensitiveData.password)
            
            NavigationLink(
                destination: DeepView()) {
                Text("Navigate to deep view")
            }
            
            Spacer()
        }
        .padding()
        .navigationBarTitle("Detail View")
    }
}

