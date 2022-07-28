//
//  DownloadWithEscapingBootcamp#22.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Evgeniy Safin on 25.07.2022.
//

import SwiftUI

//struct PostModel: Identifiable, Codable {
//    let userId: Int
//    let id: Int
//    let title: String
//    let body: String
//}

class DownloadWithEscapingViewModel: ObservableObject {
    
    @Published var posts = [PostModel]()
    
    init() {
        getPosts2()
    }
    
    func getPosts() {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard
                let data = data,
                error == nil,
                let response = response as? HTTPURLResponse,
                response.statusCode >= 200 && response.statusCode < 300 else {
                print("Error downloading data.")
                return
            }
                
            
//            guard error == nil else {
//                print("Error: \(error?.localizedDescription)")
//                return
//            }
//
//            guard let response = response as? HTTPURLResponse else {
//                print("Invalid response.")
//                return
//            }
//
//            guard response.statusCode >= 200 && response.statusCode < 300 else {
//                print("Status code should be 2xx, but is \(response.statusCode)")
//                return
//            }
            
//            print("SUCCESSFULLY DOWNLOADED DATA!")
//            print(data)
//            let jsonString = String(data: data, encoding: .utf8)
//            print(jsonString)
            
            guard let newPost = try? JSONDecoder().decode(PostModel.self, from: data) else { return }
            
            DispatchQueue.main.async { [weak self] in
                self?.posts.append(newPost)
            }

        }.resume()
    }
    
    func getPosts2() {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        downloadData(fromURL: url) { data in
            if let data = data {
                
                guard let newPosts = try? JSONDecoder().decode([PostModel].self, from: data) else { return }
                DispatchQueue.main.async { [weak self] in
                    self?.posts = newPosts
                }
            } else {
                print("No data returned")
            }
        }
    }
    
    func downloadData(fromURL url: URL, completionHandler: @escaping (_ data: Data?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let data = data,
                error == nil,
                let response = response as? HTTPURLResponse,
                response.statusCode >= 200 && response.statusCode < 300 else {
                print("Error downloading data.")
                completionHandler(nil)
                return
            }
            
            completionHandler(data)

        }.resume()
    }
}

struct DownloadWithEscapingBootcamp_22: View {
    
    @StateObject var vm = DownloadWithEscapingViewModel()
    
    var body: some View {
        
        List {
            ForEach(vm.posts) { post in
                VStack(alignment: .leading) {
                    Text(post.title)
                        .font(.headline)
                    Text(post.body)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

struct DownloadWithEscapingBootcamp_22_Previews: PreviewProvider {
    static var previews: some View {
        DownloadWithEscapingBootcamp_22()
    }
}
