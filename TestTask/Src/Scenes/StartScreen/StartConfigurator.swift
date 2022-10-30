//
//  StartConfigurator.swift
//  TestTask
//
//  Created by Александр Головин on 21.10.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Cheeezcake Template Inc.
//

import UIKit

enum StartConfigurator {
    
    static func configure(view: StartViewController) {
        let router = StartRouter(view)
        let presenter = StartPresenterImp(view, router)
        view.presenter = presenter
    }

    static func open(navigationController: UINavigationController) {
            let view = StartViewController()
        Self.configure(view: view)
        navigationController.pushViewController(view, animated: true)
    }
}
