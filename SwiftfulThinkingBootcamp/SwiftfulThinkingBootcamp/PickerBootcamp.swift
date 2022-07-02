//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 27.06.2022.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "1"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.yellow
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.black
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        ZStack {
            
            Color.yellow
            
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    ForEach(filterOptions.indices) { index in
                        Text(filterOptions[index])
                            .tag(filterOptions[index])
                    }
                })
            .pickerStyle(SegmentedPickerStyle())
            .background(Color.black)
        }
        
       
        
//        Picker(
//            selection: $selection,
//            label: HStack {
//                Text("Filter:")
//                Text(selection)
//            }
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(Color.blue)
//                .cornerRadius(10)
//                .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
//            ,
//            content: {
//
//                ForEach(filterOptions, id: \.self) { option in
//                    HStack {
//                        Text(option)
//                        Image(systemName: "heart.fill")
//                            .tag(option)
//                    }
//                }
//
////                Text("1").tag(1)
////                Text("2").tag(2)
//            })
//        .pickerStyle(MenuPickerStyle())
        
//        VStack {
//
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                    }
//
////                    Text("1").tag("1")
////                    Text("2").tag("2")
////                    Text("3").tag("3")
////                    Text("4").tag("4")
////                    Text("5").tag("5")
//                })
//            .pickerStyle(WheelPickerStyle())
//            //.background(Color.gray.opacity(0.3))
//        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
