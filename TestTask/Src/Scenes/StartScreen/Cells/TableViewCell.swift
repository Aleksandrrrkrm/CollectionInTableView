//
//  TableViewCell.swift
//  TestTask
//
//  Created by Александр Головин on 21.10.2022.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {
    
    var photos: [Item]?
    
    let collectionView = UICollectionView(frame: CGRect.zero,
                                          collectionViewLayout: UICollectionViewLayout())
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureViews()
        self.backgroundColor = .clear
        prepare()
    }
    
    required init?(coder: NSCoder) {
        
        super.init(coder: coder)
    }
    
    func prepare() {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 250, height: 350)
        layout.minimumLineSpacing = 10
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
        layout.invalidateLayout()
        
        collectionView.register(CollectionViewCell.self,
                                forCellWithReuseIdentifier: R.string.scene.collectionCell())
    }
    
    func configureViews() {
        
        collectionView.dataSource = self
        collectionView.backgroundColor = .clear
        
        contentView.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(10)
        }
    }
    
    func setupCell(withImage: [Item]) {
        photos = withImage
    }
}

extension TableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.string.scene.collectionCell(),
                                                         for: indexPath) as? CollectionViewCell {
            cell.setupCell(withImage: photos?[indexPath.row].url ?? "")
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
}
