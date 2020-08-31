//
//  MainTabbarController.swift
//  DemoItune
//
//  Created by Quan Nguyen on 8/31/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import UIKit

class MainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupPlayMusicView()
    }
    
    private func setupPlayMusicView() {
        let displayMusicView = PlayMusicView()
        view.addSubview(displayMusicView)
        displayMusicView.translatesAutoresizingMaskIntoConstraints = false
        displayMusicView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        displayMusicView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        displayMusicView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        displayMusicView.heightAnchor.constraint(equalToConstant: 51).isActive = true
    }
}
