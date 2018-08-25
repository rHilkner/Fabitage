//
//  ViewControllerFactory.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import Foundation

public enum ViewControllerType: String {

    case a = "a"

}

class ViewControllerFactory {

    static func instantiateVC(ofType type: ViewControllerType) {

        switch type {
        case .a:
            break
        default:
            break
        }

    }

}
