//
//  StoryCollectionViewCell.swift
//  SOPT30th-1st-Assignment
//
//  Created by Zaid Kang on 2022/05/06.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {

    static let identifier = "StoryCollectionViewCell"
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileNickName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setData(storyData: StoryDataModel){
        profileImage.image = UIImage(named: storyData.profileImageName)
        profileNickName.text = storyData.nickName
        
        self.profileImage.layer.cornerRadius = 25
        self.profileImage.layer.masksToBounds = false
        self.profileImage.clipsToBounds = true
    }

}
