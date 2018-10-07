//
//  SimpleImageCell.swift
//  Town of Salem
//
//  Created by Zsolt Pete on 2018. 10. 07..
//  Copyright © 2018. Zsolt Pete. All rights reserved.
//

import UIKit

class SimpleImageCell: UICollectionViewCell {

    @IBOutlet weak private var containerView: UIView!

    //You do not change these methods

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        self.initialize()
    }

    //Now you can change

    func initialize() {

    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)
    }

}
