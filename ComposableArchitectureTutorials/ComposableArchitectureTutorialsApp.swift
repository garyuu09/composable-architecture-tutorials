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
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
            ._printChanges()
    }
//    static let store = Store(initialState: CounterFeature.State()) {
//        CounterFeature()
//            ._printChanges()
//    }
    var body: some Scene {
        WindowGroup {
            AppView(store:ComposableArchitectureTutorialsApp.store)
//            CounterView(store:ComposableArchitectureTutorialsApp.store)
        }
    }
}
