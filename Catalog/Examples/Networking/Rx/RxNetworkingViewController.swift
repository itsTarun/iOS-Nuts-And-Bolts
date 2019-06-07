//
//  RxNetworkingViewController.swift
//  Catalog
//
//  Created by Filip Gulan on 25/04/2019.
//  Copyright (c) 2019 Infinum. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import RxSwift
import RxCocoa

final class RxNetworkingViewController: UIViewController {

    // MARK: - Public properties -

    var presenter: RxNetworkingPresenterInterface!

    // MARK: - Private properties -

    private let disposeBag = DisposeBag()

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
	
}

// MARK: - Extensions -

extension RxNetworkingViewController: RxNetworkingViewInterface {
}

private extension RxNetworkingViewController {

    func configure() {
        let output = RxNetworking.ViewOutput(
            email: .just("ios.team@infinum.hr"),
            password: .just("infinum1"),
            login: .just(())
        )

        let input = presenter.configure(with: output)

        input
            .didLogin
            .drive(onNext: { print("Login: \($0)") })
            .disposed(by: disposeBag)
    }

}

extension RxNetworkingViewController: Catalogizable {

    static var title: String {
        return "Rx Networking"
    }

    static var viewController: UIViewController {
        return RxNetworkingWireframe().viewController
    }

}