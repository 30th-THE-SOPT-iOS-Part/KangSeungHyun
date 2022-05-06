//
//  FeedDataModel.swift
//  SOPT30th-1st-Assignment
//
//  Created by Zaid Kang on 2022/05/06.
//

import Foundation
import UIKit

struct FeedDataModel {
    let nickName: String
    let profileImageName: String
    var profileImage: UIImage? {
        return UIImage(named: profileImageName)
    }
    let mainImageName: String
    var mainImage: UIImage? {
        return UIImage(named: mainImageName)
    }
    let likeCount: String
    let commentCount: String
    var description: String
}
    
    extension FeedDataModel{
        static let sampleData: [FeedDataModel] = [
        FeedDataModel(nickName: "ZaidKang", profileImageName: "profileImageName01", mainImageName: "mainImageName01", likeCount: "s2ohee_park님 외 여러 명이 좋아합니다", commentCount: "댓글 1개 보기", description: "소통해요1"),
        FeedDataModel(nickName: "ZaidKang2", profileImageName: "profileImageName02", mainImageName: "mainImageName02", likeCount: "s2ohee_park님 외 여러 명이 좋아합니다", commentCount: "댓글 1개 보기", description: "소통해요2"),
        FeedDataModel(nickName: "ZaidKang3", profileImageName: "profileImageName03", mainImageName: "mainImageName03", likeCount: "s2ohee_park님 외 여러 명이 좋아합니다", commentCount: "댓글 1개 보기", description: "소통해요3"),
        FeedDataModel(nickName: "ZaidKang4", profileImageName: "profileImageName04", mainImageName: "mainImageName04", likeCount: "s2ohee_park님 외 여러 명이 좋아합니다", commentCount: "댓글 1개 보기", description: "소통해요4"),
        FeedDataModel(nickName: "ZaidKang5", profileImageName: "profileImageName05", mainImageName: "mainImageName05", likeCount: "s2ohee_park님 외 여러 명이 좋아합니다", commentCount: "댓글 1개 보기", description: "소통해요5"),
        FeedDataModel(nickName: "ZaidKang6", profileImageName: "profileImageName06", mainImageName: "mainImageName06", likeCount: "s2ohee_park님 외 여러 명이 좋아합니다", commentCount: "댓글 1개 보기", description: "소통해요6")
        ]
    }

