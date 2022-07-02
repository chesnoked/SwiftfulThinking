//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 26.06.2022.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                NavigationLink("Hello, world", destination: {
                    MyOtherScreen()
                })
                
                Text("World")
                Text("World")
                Text("World")
            }
            
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
            
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                ,
                trailing: NavigationLink(
                    destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                    })
                .accentColor(.red)
            )
        }
        
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
                .navigationTitle("Second screen")
            
            VStack {
                Button("Back button", action: {
                    presentationMode.wrappedValue.dismiss()
                })
                
                NavigationLink("Click here", destination: {
                    Text("3rd screen!")
                })
                
            }
            
            
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
