//
//  UserService.swift
//  Instagram Clone
//
//  Created by 김용대 on 2020/11/30.
//

import Firebase

typealias FirestoreCompletion = (Error?) -> Void

struct UserService {
    
    static func fetchUser(completion: @escaping(User) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        COLLECTION_USERS
            .document(uid)
            .getDocument { (snapshot, error) in
                guard let dictionary = snapshot?.data() else { return }
                
                let user = User(dictionary: dictionary)
                completion(user)
            }            
    }
    
    static func fetchUsers(completion: @escaping([User]) -> Void) {
//        var users = [User]()
        COLLECTION_USERS
            .getDocuments { (snapshot, error) in
                guard let snapshot = snapshot else { return }
                
//                snapshot.documents.forEach { document in
//                    let user = User(dictionary: document.data())
//                    users.append(user)
//                }
//                completion(users)

                let users = snapshot.documents.map({ User(dictionary: $0.data()) })
                completion(users)
            }
    }
    
    static func follow(uid: String, completion: @escaping(FirestoreCompletion)) {
        guard let currenUid = Auth.auth().currentUser?.uid else { return }
        
        COLLECTION_FOLLOWING.document(currenUid)
            .collection("user-following")
            .document(uid)
            .setData([:]) { error in
                COLLECTION_FOLLOWERS.document(uid)
                    .collection("user-followers")
                    .document(currenUid)
                    .setData([:], completion: completion)
            }
        
    }
    
    static func unfollow(uid: String, completion: @escaping(FirestoreCompletion)) {
        
    }
}
