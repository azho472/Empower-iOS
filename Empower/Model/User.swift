//
//  User.swift
//  Empower
//
//  Created by Aaron Zhong on 22/06/18.
//  Copyright © 2018 Aaron Zhong. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase

class User {
    
    let uid: String
    var username: String
    var firstName: String
    var lastName: String
    var profileImage: UIImage?
    var email: String
    
    init(uid: String, username: String, firstName: String, lastName: String, profileImage: UIImage?, email: String) {
        self.uid = uid
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
        self.profileImage = profileImage
        self.email = email
    }
    
    func save() {
        Database.database().reference().child("users").child(uid).setValue(toDictionary())
        
//        if let profileImage = self.profileImage {
//            
//        }
    }
    
    func toDictionary() -> [String: Any] {
        return [
            "uid": uid,
            "username": username,
            "firstName": firstName,
            "lastName": lastName,
            "email": email
        ]
    }
    
}
