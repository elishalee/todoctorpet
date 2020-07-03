
import SwiftUI
import ASCollectionView

struct ContentView: View {
    private let xibName = "ContentView"
    @ObservedObject var viewModel = PostViewModel()
    
    var postSections: ASTableViewSection<Int> {
        ASTableViewSection(id: 0, data: viewModel.posts) { post, _ in
            PostCell(post: post)
        }
    }
    
    var body: some View {
        NavigationView {
            ASTableView(section: postSections)
            
        }
    }

}



