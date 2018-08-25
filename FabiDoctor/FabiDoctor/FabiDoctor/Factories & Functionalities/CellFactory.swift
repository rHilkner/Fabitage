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
    case vaccine = "VaccineCell"
}

class CellFactory {

    static func recordCell(collectionView: UICollectionView, indexPath: IndexPath, title: String, image: UIImage) -> RecordCollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellType.record.rawValue, for: indexPath) as! RecordCollectionViewCell
        cell.recordLabel.text = title
        cell.imageView.image = image
        return cell
    }

    static func vaccineCell(collectionView: UICollectionView, indexPath: IndexPath, vaccine: Vaccine) -> VaccineCollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellType.vaccine.rawValue, for: indexPath) as! VaccineCollectionViewCell
        cell.vaccineTypeLabel.text = vaccine.type
        cell.vaccineDateLabel.text = vaccine.date.toString(dateFormat: "dd/MM/yy")
        return cell
    }

}
