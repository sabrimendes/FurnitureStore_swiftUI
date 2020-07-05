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
                    
                    Button(action: {
                        self.index = 1
                    }) {
                        HStack(spacing: 6) {
                            Image("search")
                                .foregroundColor(self.index == 1 ? .white : .primary)
                            
                            if self.index == 1{
                                
                                Text("Search")
                                    .foregroundColor(.white)
                            }
                        }.padding(.vertical,10)
                        .padding(.horizontal)
                        .background(self.index == 1 ? Color("Color") : Color.clear)
                        .clipShape(Capsule())
                        
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                            self.index = 2
                            
                        }) {
                            
                            HStack(spacing: 6){
                             
                                Image("cart")
                                    // dark mode adoption...
                                    .foregroundColor(self.index == 2 ? .white : .primary)
                                
                                if self.index == 2{
                                    
                                    Text("Cart")
                                        .foregroundColor(.white)
                                }
                                
                            }
                            .padding(.vertical,10)
                            .padding(.horizontal)
                            .background(self.index == 2 ? Color("Color") : Color.clear)
                            .clipShape(Capsule())
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                            self.index = 3
                            
                        }) {
                            
                            HStack(spacing: 6){
                             
                                Image("account")
                                    // dark mode adoption...
                                    .foregroundColor(self.index == 3 ? .white : .primary)
                                
                                if self.index == 3{
                                    
                                    Text("Account")
                                        .foregroundColor(.white)
                                }
                                
                            }
                            .padding(.vertical,10)
                            .padding(.horizontal)
                            .background(self.index == 3 ? Color("Color") : Color.clear)
                            .clipShape(Capsule())
                        }

                        
                        
                    }
                    .padding(.horizontal,25)
                    .padding(.top)
                    // based on device bottom padding will be changed...
                    .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 10 : UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                    // for shadow...
                    .shadow(color: Color.primary.opacity(0.08), radius: 5, x: 5, y: -5)

                }
                .edgesIgnoringSafeArea(.bottom)

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
