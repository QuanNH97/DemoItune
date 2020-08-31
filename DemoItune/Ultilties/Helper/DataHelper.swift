//
//  DataHelper.swift
//  DemoItune
//
//  Created by Quan Nguyen on 8/30/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import Foundation

class DataHelper {
    private let sontungAlbums = [Card(id: 0, name: "MTP Collection", image: "son tung pl1.jpg"),
                         Card(id: 1, name: "CCYLD", image: "son tung pl3.jpg"),
                         Card(id: 2, name: "Nhạc của Sếp", image: "son tung pl4.jpg"),
                         Card(id: 3, name: "Hãy trao cho anh", image: "son tung pl5.jpg"),
                         Card(id: 4, name: "Sơn Tùng 2016", image: "song tung pl6.jpg"),
                         Card(id: 5, name: "MTP Remix", image: "son tung pl7.jpg"),
                         Card(id: 6, name: "Zing chart", image: "son tung pl8.jpg"),
                         Card(id: 7, name: "Sơn Tùng cover", image: "son tung pl9.jpg"),
                         Card(id: 7, name: "Sky ơi!", image: "son tung pl10.jpg"),
                         Card(id: 9, name: "Sky number 1", image: "son tung pl2.jpg")]
    private let moodAlbums = [Card(id: 10, name: "Country", image: "mood pl 4.jpg"),
                      Card(id: 11, name: "Child hood", image: "mood pl5.jpg"),
                      Card(id: 12, name: "Lie", image: "mood pl6.jpg"),
                      Card(id: 13, name: "Vitamin sea", image: "mood pl7.jpg"),
                      Card(id: 14, name: "Sky is blue", image: "mood pl8.jpg"),
                      Card(id: 15, name: "2 triệu năm", image: "mood pl9.jpg"),
                      Card(id: 16, name: "Lonely girl", image: "mood pl10.jpg"),
                      Card(id: 17, name: "Show Time", image: "Playlist 4.png"),
                      Card(id: 18, name: "Old School", image: "Playlist 5.png"),
                      Card(id: 19, name: "Home alone", image: "Playlist 6.png")]
    private let loveAlbums = [Card(id: 20, name: "Love songs collection", image: "love pl1.jpg"),
                      Card(id: 21, name: "Love OST", image: "love pl2.jpg"),
                      Card(id: 22, name: "Whitney Houston", image: "love pl3.jpg"),
                      Card(id: 23, name: "This love", image: "love pl4.jpg"),
                      Card(id: 24, name: "Korean women", image: "love pl5.jpg"),
                      Card(id: 25, name: "Chill", image: "love pl6.jpg"),
                      Card(id: 26, name: "Love talk", image: "love pl7.jpg"),
                      Card(id: 27, name: "Aishiteruyo", image: "love pl8.jpg"),
                      Card(id: 28, name: "Korean classic", image: "phim pl3.jpg"),
                      Card(id: 29, name: "Darkness", image: "love pl10.jpg")]
    private let rapAlbums = [Card(id: 30, name: "Thả thính", image: "rap pl1.jpg"),
                     Card(id: 31, name: "Rap Việt xưa", image: "pl 2.jpg"),
                     Card(id: 32, name: "MC ILL", image: "rap pl3.jpg"),
                     Card(id: 33, name: "Hiphop Never Die", image: "rap pl4.jpg"),
                     Card(id: 34, name: "Chill Rap", image: "rap pl5.jpg"),
                     Card(id: 35, name: "Tộc ca", image: "rap pl6.jpg"),
                     Card(id: 36, name: "Khu tao sống", image: "rap pl7.jpg"),
                     Card(id: 37, name: "Wowy collection", image: "rap pl8.jpg"),
                     Card(id: 38, name: "KSS", image: "rap pl9.jpg"),
                     Card(id: 39, name: "Fast and Furious", image: "rap pl10.jpg")]
    private let vietNamArtists = [Card(id: 40, name: "Jack", image: "jack.jpg"),
                          Card(id: 41, name: "Erik", image: "erik.jpg"),
                          Card(id: 42, name: "Phương Ly", image: "phuong ly.jpg"),
                          Card(id: 43, name: "Đức Phúc", image: "phim pl9.jpg"),
                          Card(id: 44, name: "Hiền Hồ", image: "hien ho.jpg"),
                          Card(id: 45, name: "Đạt G", image: "dat g.jpg"),
                          Card(id: 46, name: "Quang Lê", image: "quang le.jpg"),
                          Card(id: 47, name: "Masew", image: "masew.jpg"),
                          Card(id: 48, name: "Hoài Lâm", image: "son tung pl9.jpg"),
                          Card(id: 49, name: "Đen Vâu", image: "mood pl9.jpg")]
    private let USArtists = [Card(id: 50, name: "Ed Sheeran", image: "ed_sheeran.png"),
                     Card(id: 51, name: "Rita Ora", image: "rita_ora.png"),
                     Card(id: 52, name: "Eminem", image: "eminem.png"),
                     Card(id: 53, name: "Dua Lipa", image: "dua_lipa.png"),
                     Card(id: 54, name: "Vitas", image: "vitas.png"),
                     Card(id: 55, name: "Dimash", image: "dimash.png"),
                     Card(id: 56, name: "DEAM", image: "deam.jpg"),
                     Card(id: 57, name: "Zayn", image: "zayn.jpg"),
                     Card(id: 58, name: "Bruno Mar", image: "bruno mar.jpg"),
                     Card(id: 59, name: "Pitbull", image: "pitbull.jpg")]

    private func createHotAlbumList() -> [Card] {
        let totalAlbum = sontungAlbums + moodAlbums + loveAlbums + rapAlbums
        var albumSet = Set<Card>()
        while albumSet.count < 10 {
            guard let album = totalAlbum.randomElement() else { return [] }
            albumSet.insert(album)
        }
        let hotAlbum = Array(albumSet)
        return hotAlbum
    }
    
    func initData() -> [Topic]{
        let topicArray: [Topic] = [Topic(id: 0, title: "Hots now", type: .album, cards: createHotAlbumList()) ,
                                   Topic(id: 1, title: "Sơn Tùng", type: .album, cards: sontungAlbums),
                                   Topic(id: 2, title: "Mood", type: .album, cards: moodAlbums),
                                   Topic(id: 3, title: "Love", type: .album, cards: loveAlbums), Topic(id: 4, title: "Rap Việt", type: .album, cards: rapAlbums),
                                   Topic(id: 5, title: "Việt Nam Artist", type: .artist, cards: vietNamArtists),
                                   Topic(id: 6, title: "US-UK Artist", type: .artist, cards: USArtists)]
        return topicArray
    }

}
