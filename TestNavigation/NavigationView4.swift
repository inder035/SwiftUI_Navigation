//
//  NavigationView4.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 01/08/24.
//

import SwiftUI

struct NavigationView4: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        
        VStack {
            
            Text("Push to fifth view")
            NavigationLink(value: ViewType.fifth) {
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
    NavigationView4(path: .constant(NavigationPath()))
}
