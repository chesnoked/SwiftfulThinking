//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 30.06.2022.
//

import SwiftUI

struct FruitModel : Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        //
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    
    // @StateObject -> USE THIS ON CREATION / INIT
    // @ObservedObject -> USE THIS FOR SUBVIEW
    
    //@State var fruitArray: [FruitModel] = [FruitModel(name: "Apples", count: 5)]
    //var fruitViewModel: FruitViewModel = FruitViewModel()
    //@ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
                
            }
            
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(
                                        destination: RandomScreen(fruitViewModel: fruitViewModel),
                                        label: {
                                            Image(systemName: "arrow.right")
                                                .font(.title)
                                        })
                                
            )
//            .onAppear {
//                fruitViewModel.getFruits()
//            }
        }
    }
}

struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        
        ZStack {
            
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
//            Button(action: {
//                presentationMode.wrappedValue.dismiss()
//            }, label: {
//                Text("GO BACK")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            })
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
        //RandomScreen()
    }
}
