//
//  EnvironmentObjectBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 30.06.2022.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
//        self.dataArray.append("iPhone")
//        self.dataArray.append("iPad")
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                        Text(item)
                    })
                }
            }
            
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    //@ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        
        ZStack {
            
            Color.orange.ignoresSafeArea()
            NavigationLink(
                destination: FinalView(),
                label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(30)
                })
            
        }
    }
}

struct FinalView: View {
    
    //@ObservedObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(
                gradient: Gradient(colors: [Color.pink, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomLeading)
            .ignoresSafeArea()
            
            ScrollView {
                
                VStack(spacing: 20) {
                    
//                    Text("Item 1")
//                    Text("Item 2")
//                    Text("Item 3")
                    
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
        //DetailView(selectedItem: "iPhone")
        //FinalView()
    }
}
