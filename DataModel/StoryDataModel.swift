//
//  StoryDataModel.swift
//  SOPT30th-1st-Assignment
//
//  Created by Zaid Kang on 2022/05/06.
//

import Foundation

struct StoryDataModel {
    let profileImageName: String
    let nickName: String
}

extension StoryDataModel{
    static let sampleData: [StoryDataModel] = [
    StoryDataModel(profileImageName: "profileImageName01", nickName: "ZaidKang1"),
    StoryDataModel(profileImageName: "profileImageName02", nickName: "ZaidKang2"),
    StoryDataModel(profileImageName: "profileImageName03", nickName: "ZaidKang3"),
    StoryDataModel(profileImageName: "profileImageName04", nickName: "ZaidKang4"),
    StoryDataModel(profileImageName: "profileImageName05", nickName: "ZaidKang5"),
    StoryDataModel(profileImageName: "profileImageName06", nickName: "ZaidKang6"),
    StoryDataModel(profileImageName: "profileImageName07", nickName: "ZaidKang7")
    ]
}
