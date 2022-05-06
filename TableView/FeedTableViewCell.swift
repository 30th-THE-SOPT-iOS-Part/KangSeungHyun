//
//  FeedTableViewCell.swift
//  SOPT30th-1st-Assignment
//
//  Created by Zaid Kang on 2022/05/06.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    // cell 구분을 위한 identifier
    static let identifier = "FeedTableViewCell"
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nickNameLabel: UILabel!  //재사용 어떻게
    @IBOutlet weak var moreInfoButton: UIImageView!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var likeButton: UIImageView!
    @IBOutlet weak var commentButton: UIImageView!
    @IBOutlet weak var directMessageButton: UIImageView!
    @IBOutlet weak var shareButton: UIImageView!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var commentMoreInfoLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var commentNickNameLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(_ feedData: FeedDataModel){
        profileImage.image = feedData.profileImage
        mainImage.image = feedData.mainImage
        nickNameLabel.text = feedData.nickName
        descriptionLabel.text = feedData.description
        likeCountLabel.text = feedData.likeCount
        commentMoreInfoLabel.text = feedData.commentCount
        commentNickNameLabel.text = feedData.nickName
        
        
    }
    
}

/*
 FeedDataModel(nickName: "ZaidKang3", profileImageName: "profileImageName03", mainImageName: "mainImageName03", likeCount: "s2ohee_park님 외 여러 명이 좋아합니다", commentCount: "댓글 1개 보기", description: "소통해요3"),
 */
