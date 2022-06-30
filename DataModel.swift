//
//  DataModel.swift
//  SOPT30th-1st-Assignment
//
//  Created by Zaid Kang on 2022/05/09.
//

import Foundation

struct LoginResponse: Codable {
    let status: Int
//    let success: Bool?
    let message: String
    let data: LoginData?
    
}

struct LoginData: Codable {
    let name: String
    let email: String
}

//struct MessageData: Codable {
//    let reason: String
//    let location: String
//}
