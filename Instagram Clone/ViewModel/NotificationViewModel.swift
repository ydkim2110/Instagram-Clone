//
//  NotificationViewModel.swift
//  Instagram Clone
//
//  Created by 김용대 on 2020/12/08.
//

import UIKit

struct NotificationViewModel {
    
    private let notification: Notification
    
    init(notification: Notification) {
        self.notification = notification
    }
    
    var postImageUrl: URL? { return URL(string: notification.postImageUrl ?? "") }
    
    var profileImageUrl: URL? { return URL(string: notification.userProfileImageUrl)}
    
    var notificationMessage: NSAttributedString {
        let username = notification.username
        let message = notification.type.notificationMessage
        
        let attributedText = NSMutableAttributedString(
            string: username, attributes: [.font : UIFont.boldSystemFont(ofSize: 14)])
        
        attributedText.append(NSAttributedString(string: message, attributes: [.font : UIFont.systemFont(ofSize: 14)]))
        
        attributedText.append(NSAttributedString(string: " 2m", attributes: [.font : UIFont.systemFont(ofSize: 12), .foregroundColor: UIColor.lightGray]))
        
        return attributedText
    }
}
