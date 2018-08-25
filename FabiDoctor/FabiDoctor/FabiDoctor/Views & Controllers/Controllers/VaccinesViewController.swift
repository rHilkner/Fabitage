//
//  VaccinesViewController.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import UIKit

class VaccinesViewController: UIViewController {

    var vaccines: [Vaccine] = []
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.vaccines = AppShared.user.vaccines

        // Setting title of the navigation bar
        self.navigationItem.title = "Carteira de vacinação"

        // Setting "add" bar button
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonPressed))
    }

    @objc func addButtonPressed() {
        self.goToAddVaccineDataVC()
    }

}

extension VaccinesViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.vaccines.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let vaccine = self.vaccines[indexPath.row]
        let cell = CellFactory.vaccineCell(collectionView: collectionView, indexPath: indexPath, vaccine: vaccine)
        return cell
    }

}

extension VaccinesViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // nada
    }

}

// Handling segues and pushing view controllers
extension VaccinesViewController {
    func goToAddVaccineDataVC() {
        
    }
}
