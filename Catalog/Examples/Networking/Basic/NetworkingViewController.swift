//
//  NetworkingViewController.swift
//  Catalog
//
//  Created by Filip Gulan on 25/04/2019.
//  Copyright (c) 2019 Infinum. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class NetworkingViewController: UIViewController {

    // MARK: - Public properties -

    var presenter: NetworkingPresenterInterface!

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
}

// MARK: - Extensions -

extension NetworkingViewController: NetworkingViewInterface {
}

extension NetworkingViewController: Catalogizable {

    static var title: String {
        return "Networking"
    }

    static var viewController: UIViewController {
        return NetworkingWireframe().viewController
    }

}
