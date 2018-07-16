//
//  RootCollectionCell.swift
//  Remindr
//
//  Created by Matt Deuschle on 7/15/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import UIKit

class RootCollectionCell: UICollectionViewCell {

    @IBOutlet weak var categoryImageView: UIImageView!

    @IBOutlet weak var numberOfTasksLabel: UILabel!

    @IBOutlet weak var categoryLabel: UILabel!

    @IBOutlet weak var progressBarView: UIView!

    @IBOutlet weak var percentageCompleteLabel: UILabel!
    
}
