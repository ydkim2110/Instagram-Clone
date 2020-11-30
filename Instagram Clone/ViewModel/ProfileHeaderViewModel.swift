//
//  ProfileHeaderViewModel.swift
//  Instagram Clone
//
//  Created by 김용대 on 2020/11/30.
//

import Foundation

struct ProfileHeaderViewModel {
    let user: User
    
    var fullname: String {
        return user.fullname
    }
    
    var profileImageUrl: URL? {
        return URL(string: user.profileImageUrl)
    }
    
    init(user: User) {
        self.user = user
    }
    
    
}
