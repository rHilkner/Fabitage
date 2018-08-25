//
//  ViewControllerFactory.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import Foundation
import UIKit

public enum ViewControllerType: String {

    case vaccines = "VaccinesVC"
    case addVaccine = "AddVaccineVC"

}

class ViewControllerFactory {

    static func instantiateVC(ofType type: ViewControllerType) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: type.rawValue)
        return viewController
    }

}
