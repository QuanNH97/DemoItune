//
//  TopicTableViewCell.swift
//  DemoItune
//
//  Created by Quan Nguyen on 8/28/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import UIKit

protocol AlbumTableViewCellDelegate: AnyObject {
    func offsetDidChange(indexPath: IndexPath, contentOffset: CGPoint)
}

class AlbumTableViewCell: UITableViewCell {
    @IBOutlet weak var topicNameLabel: UILabel!
    @IBOutlet weak var albumCollectionView: UICollectionView!
    
    weak var delegate: AlbumTableViewCellDelegate?
    var indexPath: IndexPath = IndexPath()
    private var albumCellArray: [Card] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configCollectionView()
        registerCollectionViewCell()
    }
    
    func configCell(topic: Topic, indexPath: IndexPath, contentOffset: CGPoint) {
        self.indexPath = indexPath
        albumCellArray = topic.cards
        albumCollectionView.contentOffset = contentOffset
        topicNameLabel.text = topic.title
        topicNameLabel.textColor = topic.title == "Hots now" ? UIColor(named: "tintColor") : .black
        selectionStyle = .none
        albumCollectionView.reloadData()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configCollectionView() {
        albumCollectionView.dataSource = self
        albumCollectionView.delegate = self
    }
    
    func registerCollectionViewCell() {
        let nibCollectionViewCell = UINib(nibName: "AlbumCollectionViewCell", bundle: nil)
        albumCollectionView.register(nibCollectionViewCell, forCellWithReuseIdentifier: "AlbumCollectionViewCell")
    }

}

extension AlbumTableViewCell: UICollectionViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let contentOffset = albumCollectionView.contentOffset
        delegate?.offsetDidChange(indexPath: indexPath, contentOffset: contentOffset)
    }
}

extension AlbumTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return albumCellArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlbumCollectionViewCell", for: indexPath) as? AlbumCollectionViewCell
            else { return UICollectionViewCell() }
        cell.configCell(cell: albumCellArray[indexPath.row])
        return cell
    }
    
}
