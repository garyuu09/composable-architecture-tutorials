//
//  ComposableArchitectureTutorialsApp.swift
//  ComposableArchitectureTutorials
//
//  Created by Ryuga on 2024/02/20.
//

import ComposableArchitecture
import SwiftUI

@main
struct ComposableArchitectureTutorialsApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }
    var body: some Scene {
        WindowGroup {
            CounterView(store:ComposableArchitectureTutorialsApp.store)
        }
    }
}
