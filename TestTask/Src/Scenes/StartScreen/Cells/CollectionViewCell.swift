//
//  CollectionViewCell.swift
//  TestTask
//
//  Created by Александр Головин on 21.10.2022.
//

import UIKit
import SnapKit
import Kingfisher

class CollectionViewCell: UICollectionViewCell {
    
    var imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.layer.cornerRadius = 15
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        contentView.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setupCell(withImage: String) {
        guard
            let url = URL(string: withImage),
            UIApplication.shared.canOpenURL(url) else {
            return
        }
        self.imageView.kf.indicatorType = .activity
        self.imageView.kf.setImage(with: url)
        self.layer.cornerRadius = 10
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}


