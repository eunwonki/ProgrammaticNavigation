//
//  ContentView.swift
//  ProgrammaticNavigation
//
//  Created by wonki on 2023/08/30.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.navigate) private var navigate
    
    var body: some View {
        VStack {
            Button("Login") {
                navigate(.login)
            }
            
            Button("Product Detail")  {
                navigate(.detail(Product(name: "chair")))
            }
        }
    }
}
