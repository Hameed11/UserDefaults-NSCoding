//
//  VideoTableViewCell.swift
//  UserDefaultsNSCoding
//
//  Created by Hameed Abdullah on 6/2/19.
//  Copyright © 2019 Hameed Abdullah. All rights reserved.
//

import UIKit

protocol VideoCellDelegate {
    func didTapWatchNow(url: String)
    func didTapSave()
}

class VideoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var watchNowButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    
    var videoDelegate: VideoCellDelegate!
    
    var video: Video! {
        didSet {
            videoTitleLabel.text = video.videoTitle
            videoImageView.image = video.videoImage
        }
    }
    
    
    fileprivate func buttonsStyle() {
        // Initialization code
        watchNowButton.layer.cornerRadius = 20
        watchNowButton.layer.borderWidth = 2
        watchNowButton.layer.borderColor = UIColor.orange.cgColor
        saveButton.layer.cornerRadius = 20
        saveButton.layer.borderWidth = 2
        saveButton.layer.borderColor = UIColor.orange.cgColor
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buttonsStyle()
    }
    
    @IBAction func watchNowButtonTapped(_ sender: UIButton) {
        videoDelegate.didTapWatchNow(url: video.videoUrl)
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
