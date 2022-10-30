//
//  StartRouter.swift
//  TestTask
//
//  Created by Александр Головин on 21.10.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Cheeezcake Template Inc.
//

import UIKit

class StartRouter {
    
    weak var view: UIViewController?
    
    init(_ view: StartViewController) {
        self.view = view
    }
    
    func openSomeScene() {
        guard let navController = self.view?.navigationController else {
            return
        }
        //  SomeSceneConfigurator.open(navigationController: navController)
    }
}
