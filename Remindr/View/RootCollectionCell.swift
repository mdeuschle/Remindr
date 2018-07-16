//
//  RootCollectionCell.swift
//  Remindr
//
//  Created by Matt Deuschle on 7/15/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import UIKit

class RootCollectionCell: UICollectionViewCell {

    @IBOutlet private weak var categoryImageView: UIImageView!
    @IBOutlet private weak var numberOfTasksLabel: UILabel!
    @IBOutlet private weak var categoryLabel: UILabel!
    @IBOutlet private weak var progressBarView: UIView!
    @IBOutlet private weak var percentageCompleteLabel: UILabel!
    
}
