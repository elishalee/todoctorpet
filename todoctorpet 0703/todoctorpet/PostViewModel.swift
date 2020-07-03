
import Foundation

class PostViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        let post1 = Post(id: 0, username: "test", caption: "test caption", imageName: "NYAN", location: "Seoul")
        
        let post2 = Post(id: 1, username: "test2", caption: "test caption2", imageName: "NYAN-1", location: "Seoul")
        
        posts.append(post1)
        posts.append(post2)
    }
}

