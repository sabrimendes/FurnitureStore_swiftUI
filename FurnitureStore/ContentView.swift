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


struct TabView : View {
    
    @State var index = 0
    @Environment(\.colorScheme) var scheme
    
    var body: some View{
        
        VStack(spacing: 0){
            
            ZStack{
                
                Home()
                    .opacity(self.index == 0 ? 1 : 0)

                
                Search()
                    .opacity(self.index == 1 ? 1 : 0)
                
                Cart()
                    .opacity(self.index == 2 ? 1 : 0)
                
                Account()
                    .opacity(self.index == 3 ? 1 : 0)
                
            }
            
           
            HStack{
                
                Button(action: {
                    
                    self.index = 0
                    
                }) {
                    
                    HStack(spacing: 6){
                     
                        Image("home")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(self.index == 0 ? .white : .primary)
                        
                        if self.index == 0{
                            
                            Text("Home")
                                .foregroundColor(.white)
                        }
                        
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(self.index == 0 ? Color("Color") : Color.clear)
                    .clipShape(Capsule())
                }
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                    self.index = 1
                    
                }) {
                    
                    HStack(spacing: 6){
                     
                        Image("search")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(self.index == 1 ? .white : .primary)
                        
                        if self.index == 1{
                            
                            Text("Search")
                                .foregroundColor(.white)
                        }
                        
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(self.index == 1 ? Color("Color") : Color.clear)
                    .clipShape(Capsule())
                }
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                    self.index = 2
                    
                }) {
                    
                    HStack(spacing: 6){
                     
                        Image("cart")
                            .resizable()
                            .frame(width: 24, height: 24)
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
                            .resizable()
                            .frame(width: 24, height: 24)
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
            .background(self.scheme == .dark ? Color.black : Color.white)
            .shadow(color: Color.primary.opacity(0.08), radius: 5, x: 5, y: -5)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Cart : View {
    
    var body: some View{
        
        VStack{
            
            Text("Cart")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct Search : View {
    
    var body: some View{
        
        VStack{
            
            Text("Search")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct Account : View {
    
    var body: some View{
        
        VStack{
            
            Text("Account")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct Home : View {
    
    @Environment(\.colorScheme) var scheme
    @State var search = ""
    
    var body: some View{
        
        VStack{
            
            ZStack{
                
                HStack(spacing: 15){
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("menu")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.primary)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("qr")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.primary)
                    }
                    
                    Button(action: {
                        
                        // changing user interface style...
                        
                        UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = self.scheme == .dark ? .light : .dark
                        
                    }) {
                        
                        Image(systemName: self.scheme == .dark  ? "sun.max.fill" : "moon.fill")
                            .font(.system(size: 22))
                            .foregroundColor(.primary)
                    }
                }
                
                Text("Furnitures")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    
                    HStack(spacing: 15){
                        
                        TextField("Search", text: self.$search)
                        
                        if self.search != ""{
                            
                            Button(action: {
                                
                            }) {
                                
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(.primary)

                            }
                        }
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(Color.primary.opacity(0.06))
                    .cornerRadius(12)
                    
                    HStack{
                        
                        Text("Today's Pick")
                            .fontWeight(.bold)
                            .font(.title)
                        
                        Spacer()
                    }
                    .padding(.top,22)
                    
                    VStack{
                        
                        Image("main")
                        .resizable()
                        .frame(width: 24, height: 24)

                        
                        Text("ArmChair")
                            
                            .fontWeight(.bold)
                            .font(.title)
                            .padding(.top,-30)
                        
                        Text("$1200")
                            .foregroundColor(.gray)
                            .padding(.top,8)
                            .padding(.bottom)
                    }
                    .background(
                        Color.primary.opacity(0.06)
                            .frame(width: UIScreen.main.bounds.width - 30)
                            .cornerRadius(25)
                            .padding(.top,95)
                    )
                    .padding(.top,25)
                    
                    HStack{
                        
                        Text("Recommended For You")
                            .fontWeight(.bold)
                            .font(.title)
                        
                        Spacer()
                    }
                    .padding(.top,30)
                    .padding(.bottom, 20)
                    
                    
                }
                .padding()
            }
            
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

