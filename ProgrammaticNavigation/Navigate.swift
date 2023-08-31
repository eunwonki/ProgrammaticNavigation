//
//  Navigate.swift
//  ProgrammaticNavigation
//
//  Created by wonki on 2023/08/30.
//

import Foundation
import SwiftUI

enum Route: Hashable {
    case login
    case detail(Product)
}

struct NavigationEnvironmentKey: EnvironmentKey {
    static var defaultValue: (Route) -> Void = { _ in }
}

extension EnvironmentValues {
    var navigate: (Route) -> Void {
        get { self[NavigationEnvironmentKey.self] }
        set { self[NavigationEnvironmentKey.self] = newValue }
    }
}
