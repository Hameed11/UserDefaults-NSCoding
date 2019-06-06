//
//  SavedVideosCollectionViewCell.swift
//  UserDefaultsNSCoding
//
//  Created by Hameed Abdullah on 6/6/19.
//  Copyright © 2019 Hameed Abdullah. All rights reserved.
//

import UIKit

class SavedVideosCollectionViewCell: UICollectionViewCell {
    
    
//    //MARK:- step 5 Persistence with UserDefaults - fetching podcasts
//    var podcast: Podcast! {
//        didSet {
//            nameLabel.text = podcast.trackName
//            artistName.text = podcast.artistName
//
//            let url = URL(string: podcast.artworkUrl600 ?? "")
//            imageview.sd_setImage(with: url)
//        }
//    }
    

    //MARK:- 1 elements in each cell
    let imageview = UIImageView(image: #imageLiteral(resourceName: "conan1"))
    let titleLabel = UILabel()
    

    fileprivate func stylizeUI() {
        //MARK:- 3
        //anchor the height of the imageView to the width of imageView - the heigh is gonna be as tall as the width
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor).isActive = true
        titleLabel.text = " Video Title"
        titleLabel.backgroundColor = .orange
        titleLabel.font = UIFont.systemFont(ofSize: 13, weight: .semibold)

    }

    fileprivate func setupViews() {
        //MARK:- 2 verticall stackView it will manage all the layout
        let stackView = UIStackView(arrangedSubviews: [imageview, titleLabel])

        stackView.axis = .vertical

        //enable auto layout
        stackView.translatesAutoresizingMaskIntoConstraints = false

        //constraints the anchors for stackview
        //stackView will be subview of the entire cell
        addSubview(stackView)

        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }


    override func awakeFromNib() {
        super.awakeFromNib()
        
        stylizeUI()
        
        
        setupViews()
    }
    
}
