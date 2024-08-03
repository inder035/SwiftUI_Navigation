//
//  ContentView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 01/08/24.
//

import SwiftUI

enum ViewType: Hashable {
    case first, second, third, forth, fifth
}


struct ContentView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Text("This is a first view")
                    .padding()
                
                Text("Push to second view")
                
                NavigationLink(value: ViewType.second) {
                    Text("Push Next")
                        .padding()
                        .tint(Color.white)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
            }
            .navigationDestination(for: ViewType.self) { viewType in
                switch viewType {
                case .first:
                    ContentView()
                case .second:
                    NavigationView2(path: $path)
                case .third:
                    NavigationView3(path: $path)
                case .forth:
                    NavigationView4(path: $path)
                case .fifth:
                    LastView(path: $path)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
