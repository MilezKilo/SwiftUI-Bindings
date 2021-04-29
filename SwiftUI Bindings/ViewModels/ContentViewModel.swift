//
//  ContentViewModel.swift
//  SwiftUI Bindings
//
//  Created by Майлс on 16.04.2021.
//

import SwiftUI

class ContentViewModel : ObservableObject {
    @Published var sensitiveData = SensitiveData(password: "")
}
