//
//  CustomHeaderView.swift
//  TestTask
//
//  Created by Александр Головин on 24.10.2022.
//

import UIKit
import SnapKit

class CustomHeaderView: UIView {
    
    let label = UILabel()

    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
        
        self.addSubview(label)
        label.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(10)
            make.top.bottom.equalToSuperview()
        }
        label.font = UIFont(name: label.font.fontName, size: 40)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
