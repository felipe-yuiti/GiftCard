//
//  FilterCollectionViewScreen.swift
//  GiftCard
//
//  Created by Felipe Yuiti on 09/09/22.
//

import UIKit

class FilterCollectionViewScreen: UIView {
    
    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .darkGray
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupAddSubview()
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupAddSubview() {
        self.addSubview(self.imageView)
        self.addSubview(self.textLabel)
    }
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            self.imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.imageView.widthAnchor.constraint(equalToConstant: 15),
            self.imageView.heightAnchor.constraint(equalToConstant: 15),
            
            self.textLabel.leadingAnchor.constraint(equalTo: self.imageView.trailingAnchor, constant: 10),
            self.textLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
//            self.textLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
        ])
    }
}
