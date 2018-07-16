//
//  RootTableCell.swift
//  Remindr
//
//  Created by Matt Deuschle on 7/15/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import UIKit

class RootTableCell: UITableViewCell {

    @IBOutlet private weak var collectionView: UICollectionView!

    private let colors: [UIColor] = [.red, .green, .blue, .orange, .purple]

    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension RootTableCell: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "rootCollectionCell", for: indexPath) as? RootCollectionCell else {
            return UICollectionViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
}

extension RootTableCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cgSize = CGSize(width: collectionView.bounds.size.width - 120, height: 270)
        return cgSize
    }
}
