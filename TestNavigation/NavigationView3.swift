//
//  NavigationView3.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 01/08/24.
//

import SwiftUI

struct NavigationView3: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
        
            Text("Push to forth view")
            NavigationLink(value: ViewType.forth) {
                Text("Push Next")
                    .padding()
                    .tint(Color.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            
        }
    }
}

#Preview {
    NavigationView3(path: .constant(NavigationPath()))
}
