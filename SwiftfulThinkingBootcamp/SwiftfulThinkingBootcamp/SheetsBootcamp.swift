//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 26.06.2022.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.green)
                    .padding()
                    .background(Color.black.cornerRadius(10).shadow(radius: 10))
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet, content: {
                //Text("hello there".uppercased())
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                
                Image(systemName: "xmark")
                    .foregroundColor(.black)
                    .font(.headline)
                    .padding(20)
            })
            
//            .sheet(isPresented: $showSheet, content: {
//                Text("hello there".uppercased())
//            })
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
        //SecondScreen()
    }
}
