

import SwiftUI

struct PostCell: View {
    let post: Post
    
    @State var liked = false
    
    var header: some View {
        HStack {
            Image(post.imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipped()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
            .padding(.leading)
            
            VStack(alignment: .leading) {
                Text(post.username).font(.system(size: 14)).bold()
                Text(post.location).font(.system(size: 14))
            }
            Spacer()
            Image(systemName: "ellipsis").padding()
            
        }
    }
    var actionButtons: some View {
        HStack {
            Image(systemName: self.liked ? "heart.fill" : "heart")
                .renderingMode(.template)
                .foregroundColor(self.liked ? .red : Color(.label))
                .onTapGesture {
                    self.liked.toggle()
            }
            .padding(.init(top: 0, leading: 12, bottom: 0, trailing: 8))
            
            Image(systemName: "bubble.left")
            .padding(.init(top: 0, leading: 8, bottom: 0, trailing: 8))
            
            Image(systemName: "paperplane")
            .padding(.init(top: 0, leading: 8, bottom: 0, trailing: 8))
            
            Spacer()
        }
        .font(.system(size: 21, weight: .light))
        .padding([.top, .bottom])
    .fixedSize(horizontal: false, vertical: true)
    }
    
    var textContent: some View {
        VStack(alignment: .leading, spacing: 4) {
            Group {
                Text("\(post.username) ").font(.system(size: 14)).bold() +
                    Text(post.caption).font(.system(size: 14))
            }
            .padding([.leading, .trailing])
            
            Text("41 minutes ago")
                .foregroundColor(Color(.systemGray2))
                .font(.system(size: 14))
                .frame(maxWidth: .infinity, alignment: .trailing)
            
        }
    }
    
    
    var body: some View {
        VStack {
            header
            
            Image(post.imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipped()
            
            actionButtons
            
            textContent
            
            Spacer()
        }
    }
}
