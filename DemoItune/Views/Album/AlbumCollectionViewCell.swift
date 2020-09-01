//
//  AlbumCollectionViewCell.swift
//  DemoItune
//
//  Created by Quan Nguyen on 8/28/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import UIKit

class AlbumCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var albumTitleLabel: UILabel!
    @IBOutlet weak var albumViewCountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configCell(album: Album) {
        albumImageView.image = UIImage(named: album.image)
        albumTitleLabel.text = album.name
        albumViewCountLabel.text = Formatter.shared.formatNumber(number: album.viewCount ?? 0) + " VIEWS"
    }

}
