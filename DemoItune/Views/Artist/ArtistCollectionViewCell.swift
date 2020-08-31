//
//  ArtistCollectionViewCell.swift
//  DemoItune
//
//  Created by Quan Nguyen on 8/28/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import UIKit

class ArtistCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var artistImageView: UIImageView!
    @IBOutlet weak var artistNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configCell(cell: Artist) {
        artistNameLabel.text = cell.name
        artistImageView.image = UIImage(named: cell.image)
    }
}
