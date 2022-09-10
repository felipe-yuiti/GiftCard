//
//  FilterCollectionViewCell.swift
//  GiftCard
//
//  Created by Felipe Yuiti on 08/09/22.
//

import UIKit

class FilterCollectionViewCell: UICollectionViewCell {
 
    static var identifier: String = "FilterCollectionViewCell"
    
    let screen: FilterCollectionViewScreen = FilterCollectionViewScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupAddSubview()
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupCell(data: FilterModel) {
        self.screen.imageView.image = UIImage(named: data.image)
        self.screen.textLabel.text = data.text
        
    }
    
    
    private func setupAddSubview() {
        self.screen.layer.borderWidth = 0.3
        self.screen.layer.borderColor = .init(gray: 0.3, alpha: 0.3)
        self.screen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.screen)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            self.screen.topAnchor.constraint(equalTo: self.topAnchor),
            self.screen.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.screen.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.screen.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
}
