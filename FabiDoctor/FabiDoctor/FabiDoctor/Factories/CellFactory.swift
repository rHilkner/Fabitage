//
//  CellFactory.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import Foundation
import UIKit

public enum CellType: String {
    case record = "RecordCell"
}

class CellFactory {

    static func recordCell(collectionView: UICollectionView, indexPath: IndexPath, image: UIImage) -> RecordCollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellType.record.rawValue, for: indexPath) as! RecordCollectionViewCell
        cell.imageView.image = image
        return cell
    }

}
