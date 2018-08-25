//
//  RecordsViewController.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import UIKit

struct CellInfo {
    let title: String
    let image: UIImage?
}

class RecordsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let cellsInfos: [CellInfo] = [
        CellInfo(title: "Ocorrências Médicas", image: UIImage(named: ImageNames.medicalOccurrences.rawValue)),
        CellInfo(title: "Exame de Sangue", image: UIImage(named: ImageNames.bloodExam.rawValue)),
        CellInfo(title: "Diário de Sintomas", image: UIImage(named: ImageNames.symptomJournal.rawValue)),
        CellInfo(title: "Medidas Corporais", image: UIImage(named: ImageNames.bodyMeasurements.rawValue)),
        CellInfo(title: "Alergias", image: UIImage(named: ImageNames.alergies.rawValue)),
        CellInfo(title: "Remédios", image: UIImage(named: ImageNames.medicines.rawValue))
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
            let cell = CellFactory.recordCell(collectionView: collectionView, indexPath: indexPath, title: "", image: UIImage())
            return cell
        }
        let title = self.cellsInfos[indexPath.row].title
        let cell = CellFactory.recordCell(collectionView: collectionView, indexPath: indexPath, title: title, image: image)
        cell.imageView.layer.borderColor = UIColor.black.cgColor
        cell.imageView.layer.borderWidth = 1
        return cell
    }

}

extension RecordsViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch self.cellsInfos[indexPath.row].title {
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
        let vaccinesVC = ViewControllerFactory.instantiateVC(ofType: .vaccines)
        vaccinesVC
    }

}
