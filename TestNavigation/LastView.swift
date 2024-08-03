//
//  LastView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 01/08/24.
//

import SwiftUI

struct LastView: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        
        VStack {
            Text("Pop to home")
            
            Button {
                path.removeLast(path.count)
            } label: {
                Text("Home ")
                    .padding()
                    .tint(Color.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
        }
        
    }
}

#Preview {
    LastView(path: .constant(NavigationPath()))
}
