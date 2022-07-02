//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 26.06.2022.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
    //    @State var alertTitle: String = ""
    //    @State var alertMessage: String = ""
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                
                Button("Button 1") {
                    //                    alertTitle = "ERROR UPLOADING VIDEO"
                    //                    alertMessage = "The video could not be uploaded"
                    alertType = .error
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    //                    alertTitle = "Successfully uploaded video 🥳"
                    //                    alertMessage = "Your video is now public"
                    alertType = .success
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                //Alert(title: Text("There was an error!"))
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"))
        case .success:
            return Alert(
                title: Text("This was a  success"),
                message: nil,
                dismissButton: .default(Text("OK"), action: {
                    backgroundColor = .green
                }))
        default:
            return Alert(title: Text("ERROR"))
        }
        
        //        return Alert(
        //            title: Text(alertTitle),
        //            message: Text(alertMessage),
        //            dismissButton: .default(Text("OK")))
        
        //        return Alert(
        //            title: Text("This is the title"),
        //            message: Text("Here we will describe the error."),
        //            primaryButton: .default(Text("Delete"), action: {
        //                backgroundColor = .red
        //            }),
        //            secondaryButton: .cancel())
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
