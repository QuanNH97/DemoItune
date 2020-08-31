//
//  DataHelper.swift
//  DemoItune
//
//  Created by Quan Nguyen on 8/30/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import Foundation

class DataHelper {
    let cellArray1 = [Cell(id: 0, name: "MTP Collection", image: "son tung pl1.jpg"), Cell(id: 1, name: "CCYLD", image: "son tung pl3.jpg"), Cell(id: 2, name: "Nhạc của Sếp", image: "son tung pl4.jpg"), Cell(id: 3, name: "Hãy trao cho anh", image: "son tung pl5.jpg"), Cell(id: 4, name: "Sơn Tùng 2016", image: "song tung pl6.jpg"), Cell(id: 5, name: "MTP Remix", image: "son tung pl7.jpg"), Cell(id: 6, name: "Zing chart", image: "son tung pl8.jpg"), Cell(id: 7, name: "Sơn Tùng cover", image: "son tung pl9.jpg"), Cell(id: 7, name: "Sky ơi!", image: "son tung pl10.jpg"), Cell(id: 9, name: "Sky number 1", image: "son tung pl2.jpg")]
    let cellArray2 = [Cell(id: 10, name: "Country", image: "mood pl 4.jpg"), Cell(id: 11, name: "Child hood", image: "mood pl5.jpg"), Cell(id: 12, name: "Lie", image: "mood pl6.jpg"), Cell(id: 13, name: "Vitamin sea", image: "mood pl7.jpg"), Cell(id: 14, name: "Sky is blue", image: "mood pl8.jpg"), Cell(id: 15, name: "2 triệu năm", image: "mood pl9.jpg"), Cell(id: 16, name: "Lonely girl", image: "mood pl10.jpg"), Cell(id: 17, name: "Show Time", image: "Playlist 4.png"), Cell(id: 18, name: "Old School", image: "Playlist 5.png"), Cell(id: 19, name: "Home alone", image: "Playlist 6.png")]
    let cellArray3 = [Cell(id: 20, name: "Love songs collection", image: "love pl1.jpg"), Cell(id: 21, name: "Love OST", image: "love pl2.jpg"), Cell(id: 22, name: "Whitney Houston", image: "love pl3.jpg"), Cell(id: 23, name: "This love", image: "love pl4.jpg"), Cell(id: 24, name: "Korean women", image: "love pl5.jpg"), Cell(id: 25, name: "Chill", image: "love pl6.jpg"), Cell(id: 26, name: "Love talk", image: "love pl7.jpg"), Cell(id: 27, name: "Aishiteruyo", image: "love pl8.jpg"), Cell(id: 28, name: "Korean classic", image: "phim pl3.jpg"), Cell(id: 29, name: "Darkness", image: "love pl10.jpg")]
    let cellArray4 = [Cell(id: 30, name: "Thả thính", image: "rap pl1.jpg"), Cell(id: 31, name: "Rap Việt xưa", image: "pl 2.jpg"), Cell(id: 32, name: "MC ILL", image: "rap pl3.jpg"), Cell(id: 33, name: "Hiphop Never Die", image: "rap pl4.jpg"), Cell(id: 34, name: "Chill Rap", image: "rap pl5.jpg"), Cell(id: 35, name: "Tộc ca", image: "rap pl6.jpg"), Cell(id: 36, name: "Khu tao sống", image: "rap pl7.jpg"), Cell(id: 37, name: "Wowy collection", image: "rap pl8.jpg"), Cell(id: 38, name: "KSS", image: "rap pl9.jpg"), Cell(id: 39, name: "Fast and Furious", image: "rap pl10.jpg")]
    let cellArray5 = [Cell(id: 40, name: "Jack", image: "jack.jpg"), Cell(id: 41, name: "Erik", image: "erik.jpg"), Cell(id: 42, name: "Phương Ly", image: "phuong ly.jpg"), Cell(id: 43, name: "Đức Phúc", image: "phim pl9.jpg"), Cell(id: 44, name: "Hiền Hồ", image: "hien ho.jpg"), Cell(id: 45, name: "Đạt G", image: "dat g.jpg"), Cell(id: 46, name: "Quang Lê", image: "quang le.jpg"), Cell(id: 47, name: "Masew", image: "masew.jpg"), Cell(id: 48, name: "Hoài Lâm", image: "son tung pl9.jpg"), Cell(id: 49, name: "Đen Vâu", image: "mood pl9.jpg")]
    let cellArray6 = [Cell(id: 50, name: "Ed Sheeran", image: "ed_sheeran.png"), Cell(id: 51, name: "Rita Ora", image: "rita_ora.png"), Cell(id: 52, name: "Eminem", image: "eminem.png"), Cell(id: 53, name: "Dua Lipa", image: "dua_lipa.png"), Cell(id: 54, name: "Vitas", image: "vitas.png"), Cell(id: 55, name: "Dimash", image: "dimash.png"), Cell(id: 56, name: "DEAM", image: "deam.jpg"), Cell(id: 57, name: "Zayn", image: "zayn.jpg"), Cell(id: 58, name: "Bruno Mar", image: "bruno mar.jpg"), Cell(id: 59, name: "Pitbull", image: "pitbull.jpg")]

    func createHotAlbumList() -> [Cell] {
        let totalAlbum = cellArray1 + cellArray2 + cellArray3 + cellArray4
        var albumSet = Set<Cell>()
        while albumSet.count < 10 {
            guard let album = totalAlbum.randomElement() else { return [] }
            albumSet.insert(album)
        }
        let hotAlbum = Array(albumSet)
        return hotAlbum
    }
    
    func initData() -> [Topic]{
        let topicArray: [Topic] = [Topic(id: 0, title: "Hots now", type: .album, cell: createHotAlbumList()) ,Topic(id: 1, title: "Sơn Tùng", type: .album, cell: cellArray1), Topic(id: 2, title: "Mood", type: .album, cell: cellArray2), Topic(id: 3, title: "Love", type: .album, cell: cellArray3), Topic(id: 4, title: "Rap Việt", type: .album, cell: cellArray4), Topic(id: 5, title: "Việt Nam Artist", type: .artist, cell: cellArray5), Topic(id: 6, title: "US-UK Artist", type: .artist, cell: cellArray6)]
        return topicArray
    }

}
