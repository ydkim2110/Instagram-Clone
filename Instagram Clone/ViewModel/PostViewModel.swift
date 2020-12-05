//
//  PostViewModel.swift
//  Instagram Clone
//
//  Created by 김용대 on 2020/12/05.
//

import Foundation

struct PostViewModel {
    
    private let post: Post
    
    var imageUrl: URL? { return URL(string: post.imageUrl) }
    
    var caption: String { return post.caption }
    
    var likes: Int { return post.likes }
    
    init(post: Post) {
        self.post = post
    }
    
}
