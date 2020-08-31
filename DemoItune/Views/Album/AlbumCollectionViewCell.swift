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
    
    var formatter = Formatter()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configCell(cell: Card) {
        albumImageView.image = UIImage(named: cell.image)
        albumTitleLabel.text = cell.name
        albumViewCountLabel.text = formatter.formatNumber(number: cell.viewCount ?? 0) + " VIEWS"
    }

}
