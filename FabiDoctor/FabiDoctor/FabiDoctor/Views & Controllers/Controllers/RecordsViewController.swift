//
//  RecordsViewController.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import UIKit

class RecordsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var cellsImages: [UIImage?] = [
        UIImage(named: ImageNames.symptomJournal.rawValue),
        UIImage(named: ImageNames.bloodExam.rawValue),
        UIImage(named: ImageNames.demographicData.rawValue),
        UIImage(named: ImageNames.alergies.rawValue),
        UIImage(named: ImageNames.medicines.rawValue),
        UIImage(named: ImageNames.vaccines.rawValue)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension RecordsViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.cellsImages.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let image = self.cellsImages[indexPath.row] else {
            let cell = CellFactory.recordCell(collectionView: collectionView, indexPath: indexPath, image: UIImage())
            return cell
        }

        let cell = CellFactory.recordCell(collectionView: collectionView, indexPath: indexPath, image: image)
        return cell
    }

}

extension RecordsViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            <#code#>
        default:
            <#code#>
        }
    }

}


extension RecordsViewController {
    func goTo
}
