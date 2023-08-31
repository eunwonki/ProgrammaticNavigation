//
//  ContainerView.swift
//  ProgrammaticNavigation
//
//  Created by wonki on 2023/08/30.
//

import SwiftUI

struct ContentViewContainerView: View {
    @State private var routes: [Route] = []
    
    var body: some View {
        NavigationStack(path: $routes) {
            ContentView()
                .environment(\.navigate) { route in
                    routes.append(route)
                }
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .login:
                        Text("Login")
                    case let .detail(product):
                        Text(product.name)
                    }
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewContainerView()
    }
}
