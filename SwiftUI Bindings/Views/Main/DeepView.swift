//
//  DeepView.swift
//  SwiftUI Bindings
//
//  Created by Майлс on 16.04.2021.
//

import SwiftUI

struct DeepView: View {
    
    @Environment(\.presentationMode) var presentationMode

    @EnvironmentObject var settings : Settings
    
    var body: some View {
        
        
        VStack(spacing: 12) {
            
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Back")
                    .foregroundColor(.red)
            }
            
            Toggle(isOn: $settings.isPasswordShown) {
                Text("Show password")
            }
            
            Spacer()
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("Deep View")
    }
}

struct DeepView_Previews: PreviewProvider {
    static var previews: some View {
        DeepView().environmentObject(Settings())
    }
}
