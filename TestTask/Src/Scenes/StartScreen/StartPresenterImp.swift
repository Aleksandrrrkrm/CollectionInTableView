//
//  StartPresenterImp.swift
//  TestTask
//
//  Created by Александр Головин on 21.10.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Cheeezcake Template Inc.
//

import Foundation

class StartPresenterImp: StartPresenter {
    
    private var view: StartView?
    private let router: StartRouter
    
    init(_ view: StartView,
         _ router: StartRouter) {
        self.view = view
        self.router = router
    }
}
