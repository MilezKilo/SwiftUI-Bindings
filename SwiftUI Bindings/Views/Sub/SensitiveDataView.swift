//
//  SensitiveDataView.swift
//  SwiftUI Bindings
//
//  Created by Майлс on 16.04.2021.
//

import SwiftUI

struct SensitiveDataView: View {
    
    //Read-only property
    //var password : String = "123"
    
    //State property wrapper, used in the view where it was created
    //@State private var password = ""
    
    @Binding var password: String
    
    var body: some View {
        VStack {
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct SensitiveDataView_Previews: PreviewProvider {
    static var previews: some View {
        SensitiveDataView(password: .constant("12345"))
    }
}
