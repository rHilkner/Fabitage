//
//  AlergiesViewController.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import UIKit

class AlergiesViewController: UIViewController {

    var alergies: [Alergy] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setting title of the navigation bar
        self.navigationItem.title = "Alergias"

        // Setting "add" bar button
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonPressed))
    }

    override func viewDidAppear(_ animated: Bool) {
        self.alergies = AppShared.user.alergies
//        self.tableView.reloadData()
    }

}

//extension AlergiesViewController: UITableViewDataSource {
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//    }
//
//}
//
//extension AlergiesViewController: UITableViewDelegate {
//
//}

extension AlergiesViewController {

    @objc func addButtonPressed() {
        self.goToAddAlergyVC()
    }

    func goToAddAlergyVC() {
        let viewController = ViewControllerFactory.instantiateVC(ofType: .addAlergy)
        self.navigationController?.pushViewController(viewController, animated: true)
    }

}

