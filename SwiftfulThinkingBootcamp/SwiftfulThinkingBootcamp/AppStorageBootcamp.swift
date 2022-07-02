//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 01.07.2022.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    //@State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        
        VStack {
            
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased(), action: {
                let name = "Emily"
                currentUserName = name
                
                //UserDefaults.standard.set(name, forKey: "name")
            })
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
