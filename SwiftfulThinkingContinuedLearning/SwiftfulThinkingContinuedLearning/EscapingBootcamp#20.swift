//
//  EscapingBootcamp#20.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Evgeniy Safin on 23.07.2022.
//

import SwiftUI

class EscapingViewModel: ObservableObject {
    
    @Published var text: String = "Hello"
    
//    func getData() {
//        let newData = downloadData()
//        text = newData
//    }
    
//    func getData() {
//        downloadData2 { data in
//            text = data
//        }
//    }
    
//    func getData() {
//        downloadData3 { [weak self] data in
//            self?.text = data
//        }
//    }
    
//    func getData() {
//        downloadData3 { data in
//            self.text = data
//        }
//    }
    
    func getData() {
        downloadData5 { [weak self] result in
            self?.text = result.data
        }
    }
    
    func downloadData() -> String {
        return "New data"
    }
    
    func downloadData2(completionHandler: (_ data: String) -> Void) {
        completionHandler("New data 2")
    }
    
    func downloadData3(completion: @escaping (_ data: String) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            completion("New data 3")
        }
    }
    
    func downloadData4(completion: @escaping (DownloadResult) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let result = DownloadResult(data: "New data 4")
            completion(result)
        }
    }
    
    func downloadData5(completion: @escaping DownloadCompletion) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let result = DownloadResult(data: "New data 5")
            completion(result)
        }
    }
}

struct DownloadResult {
    let data: String
}

typealias DownloadCompletion = (DownloadResult) -> ()

struct EscapingBootcamp_20: View {
    
    @StateObject var vm = EscapingViewModel()
    
    var body: some View {
        
        Text("\(vm.text)")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.blue)
            .onTapGesture {
                vm.getData()
            }
    }
}

struct EscapingBootcamp_20_Previews: PreviewProvider {
    static var previews: some View {
        EscapingBootcamp_20()
    }
}
