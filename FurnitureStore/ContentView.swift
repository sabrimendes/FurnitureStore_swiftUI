//
//  ContentView.swift
//  FurnitureStore
//
//  Created by Saswata Mukherjee on 05/07/20.
//  Copyright © 2020 Saswata Mukherjee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView()
    }
}

struct TabView: View {
    @State var index = 0
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            HStack {
                Button(action: {
                    
                }) {
                    HStack(spacing: 6) {
                        Image("home")
                            .foregroundColor(self.index == 0 ? .white : .primary)
                        
                        if self.index == 0{
                            
                            Text("Home")
                                .foregroundColor(.white)
                        }
                    }.padding(.vertical,10)
                    .padding(.horizontal)
                    .background(self.index == 0 ? Color("Color") : Color.clear)
                    .clipShape(Capsule())
                    
                    Spacer(minLength: 0)


                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
