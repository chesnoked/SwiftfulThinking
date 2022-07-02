//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 28.06.2022.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        
        //MARK: Version-1
//        TabView(selection: $selectedTab) {
//
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .accentColor(.black)
        //
        
        //MARK: Version-2
        TabView {
            
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
            
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.gray)
//
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.yellow)
//
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.brown)
        }
        .background(
            RadialGradient(
                gradient: Gradient(colors: [Color.red, Color.blue]),
                center: .center,
                startRadius: 5,
                endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        
        ZStack {
            
            Color.yellow
                .ignoresSafeArea()
            
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.gray)
                        .cornerRadius(10)
                })
            }

        }
    }
}
