//
//  TopicTableViewCell.swift
//  DemoItune
//
//  Created by Quan Nguyen on 8/28/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import UIKit

protocol ArtistTableViewCellDelegate: AnyObject {
    func offsetDidChange(indexPath: IndexPath, contentOffset: CGPoint)
}

class ArtistTableViewCell: UITableViewCell {
    @IBOutlet weak var topicNameLabel: UILabel!
    @IBOutlet weak var artistCollectionView: UICollectionView!
    
    weak var delegate: AlbumTableViewCellDelegate?
    var indexPath: IndexPath = IndexPath()
    private var artistCellArray: [Card] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configCollectionView()
        registerCollectionViewCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCollectionView() {
        artistCollectionView.dataSource = self
        artistCollectionView.delegate = self
    }
    func registerCollectionViewCell() {
        let nibCollectionViewCell = UINib(nibName: "ArtistCollectionViewCell", bundle: nil)
        artistCollectionView.register(nibCollectionViewCell, forCellWithReuseIdentifier: "ArtistCollectionViewCell")
    }
    func configCell(topic: Topic, indexPath: IndexPath, contentOffset: CGPoint) {
        self.indexPath = indexPath
        artistCellArray = topic.cards
        artistCollectionView.contentOffset = contentOffset
        topicNameLabel.text = topic.title
    }
    override func prepareForReuse() {
        artistCollectionView.reloadData()
    }
}

extension ArtistTableViewCell: UICollectionViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offset = artistCollectionView.contentOffset
        delegate?.offsetDidChange(indexPath: indexPath, contentOffset: offset)
    }
}

extension ArtistTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return artistCellArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArtistCollectionViewCell", for: indexPath) as? ArtistCollectionViewCell
            else { return UICollectionViewCell() }
        cell.configCell(cell: artistCellArray[indexPath.row])
        return cell
    }
    
}
