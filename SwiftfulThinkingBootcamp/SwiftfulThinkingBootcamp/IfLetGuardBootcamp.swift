//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 29.06.2022.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    //@State var currentUserID: String? = nil
    @State var currentUserID: String? = "User123"
    
    //@State var displayText: String = ""
    @State var displayText: String? = nil
    
    @State var isLoading: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                Text("Here we are practicing safe coding!")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                        .foregroundColor(.orange)
                }
                
                // MARK: FORCE UNWRAPING
                /*
                 Text(displayText!)
                     .font(.title)
                     .foregroundColor(.green)
                 */
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
            
        }
        
    }
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID!"
        }
    }
    
    func loadData2() {
        
        guard let userID = currentUserID else {
            displayText = "Error. There is no User ID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
