//
//  Comment.swift
//  Instagram Clone
//
//  Created by 김용대 on 2020/12/06.
//

import Firebase

struct Comment {
    
    let uid: String
    let comment: String
    let username: String
    let profileImageUrl: String
    let timestamp: Timestamp
    
    init(dictionary: [String : Any]) {
        self.uid = dictionary["uid"] as? String ?? ""
        self.comment = dictionary["comment"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.timestamp = dictionary["timestamp"] as? Timestamp ?? Timestamp(date: Date())
    }
    
}
