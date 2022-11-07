//
//  StartViewController.swift
//  TestTask
//
//  Created by Александр Головин on 21.10.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Cheeezcake Template Inc.
//

import UIKit
import SnapKit

class StartViewController: UIViewController {
    
    internal var presenter: StartPresenter?
    
    let tableView = UITableView.init(frame: .zero)
    let data = Entity()
    let headers = Headers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        StartConfigurator.configure(view: self)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        setupViews()
        setupAppearance()
    }
    
    func setupAppearance() {
        view.backgroundColor = R.color.appBaseColor()
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        tableView.allowsSelection = false
        tableView.rowHeight = 400
        tableView.sectionHeaderHeight = UITableView.automaticDimension
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: R.string.scene.tableCell())
    }
    
    func setupViews() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension StartViewController: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        headers.headers.count
    }
    
    internal func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = CustomHeaderView()
        view.label.text = headers.headers[section]
        self.view.addSubview(view)
        return view
    }
}

extension StartViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: R.string.scene.tableCell(), for: indexPath) as! TableViewCell
        cell.setupCell(withImage: data.photo[indexPath.section])
        print(indexPath.row)
        return cell
    }
}

extension StartViewController: StartView { }
