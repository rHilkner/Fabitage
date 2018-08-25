//
//  RecordsViewController.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import UIKit

struct CellInfo {
    let type: String
    let image: UIImage?
}

class RecordsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let cellsInfos: [CellInfo] = [
        CellInfo(type: "SymptomJournal", image: UIImage(named: ImageNames.symptomJournal.rawValue)),
        CellInfo(type: "BloodExam", image: UIImage(named: ImageNames.bloodExam.rawValue)),
        CellInfo(type: "BodyMeasurements", image: UIImage(named: ImageNames.bodyMeasurements.rawValue)),
        CellInfo(type: "Alergies", image: UIImage(named: ImageNames.alergies.rawValue)),
        CellInfo(type: "Medicines", image: UIImage(named: ImageNames.medicines.rawValue)),
        CellInfo(type: "Vaccines", image: UIImage(named: ImageNames.vaccines.rawValue))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension RecordsViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.cellsInfos.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let image = self.cellsInfos[indexPath.row].image else {
            let cell = CellFactory.recordCell(collectionView: collectionView, indexPath: indexPath, image: UIImage())
            return cell
        }

        let cell = CellFactory.recordCell(collectionView: collectionView, indexPath: indexPath, image: image)
        return cell
    }

}

extension RecordsViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch self.cellsInfos[indexPath.row].type {
        case "SymptomJournal":
            self.goToSymptomJournalVC()
        case "BloodExam":
            self.goToBloodExamVC()
        case "BodyMeasurements":
            self.goToBodyMeasurementsVC()
        case "Alergies":
            self.goToAlergiesVC()
        case "Medicines":
            self.goToMedicinesVC()
        case "Vaccines":
            self.goToVaccinesVC()
        default:
            print("-> WARNING: Couldn't find cell selected")
        }
    }

}


extension RecordsViewController {

    func goToSymptomJournalVC() {

    }

    func goToBloodExamVC() {

    }

    func goToBodyMeasurementsVC() {

    }

    func goToAlergiesVC() {

    }

    func goToMedicinesVC() {

    }

    func goToVaccinesVC() {

    }

}
