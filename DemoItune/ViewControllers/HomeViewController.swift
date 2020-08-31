//
//  ViewController.swift
//  DemoItune
//
//  Created by Quan Nguyen on 8/27/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    var contentOffsetDictionary: [IndexPath: CGPoint] = [:]
    var data = DataHelper().initData()
    @IBOutlet weak var topicTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configTableView()
        registerTableViewCell()
    }
    func configTableView() {
        topicTableView.dataSource = self
        topicTableView.delegate = self
        topicTableView.separatorStyle = .none
    }
    func registerTableViewCell() {
        let albumTableViewCell = UINib(nibName: "AlbumTableViewCell", bundle: nil)
        topicTableView.register(albumTableViewCell, forCellReuseIdentifier: "AlbumTableViewCell")
        let artistTableViewCell = UINib(nibName: "ArtistTableViewCell", bundle: nil)
        topicTableView.register(artistTableViewCell, forCellReuseIdentifier: "ArtistTableViewCell")
    }
    
}

extension HomeViewController: UITableViewDelegate {}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if data[indexPath.row].type == .album {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "AlbumTableViewCell", for: indexPath) as? AlbumTableViewCell
                else { return UITableViewCell() }
            cell.configCell(topic: data[indexPath.row], indexPath: indexPath, contentOffset: contentOffsetDictionary[indexPath] ?? .zero)
            cell.delegate = self
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArtistTableViewCell", for: indexPath) as? ArtistTableViewCell
                else { return UITableViewCell() }
            cell.configCell(topic: data[indexPath.row], indexPath: indexPath, contentOffset: contentOffsetDictionary[indexPath] ?? .zero)
            cell.delegate = self
            return cell
        }
    }

}

extension HomeViewController: AlbumTableViewCellDelegate, ArtistTableViewCellDelegate {
    func offsetDidChange(indexPath: IndexPath, contentOffset: CGPoint) {
           contentOffsetDictionary[indexPath] = contentOffset
       }
}
