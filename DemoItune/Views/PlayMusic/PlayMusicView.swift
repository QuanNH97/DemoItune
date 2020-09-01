//
//  DisplayMusicView.swift
//  DemoItune
//
//  Created by Quan Nguyen on 8/31/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import UIKit

class PlayMusicView: UIView {
    @IBOutlet var containerView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("PlayMusicView", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
