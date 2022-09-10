//
//  CustomCardView.swift
//  GiftCard
//
//  Created by Felipe Yuiti on 03/09/22.
//

import UIKit

class CustomCardView: UIView {
    
    var containerLeadingConstraints: NSLayoutConstraint?
    var containerTopConstraints: NSLayoutConstraint?
    var containerTrailingConstraints: NSLayoutConstraint?
    var containerBottomConstraints: NSLayoutConstraint?
    
    
    lazy var cardContainerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.layer.cornerRadius = 10
        v.clipsToBounds = true
        v.layer.shadowOpacity = 1
        v.layer.shadowOffset = CGSize(width: 0, height: -2)
        v.layer.shadowRadius = 20
        return v
    }()
    
    lazy var cardView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .clear
        v.layer.borderWidth = 1
//        v.layer.borderColor = UIColor.white.cgColor
        v.layer.cornerRadius = 25
        return v
    }()
    
    lazy var overlayView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
//        v.backgroundColor = UIColor.green.withAlphaComponent(0.9)
        return v
    }()
    
    lazy var titleImage: UIImageView = {
        let btn = UIImageView()
        btn.translatesAutoresizingMaskIntoConstraints = false
//        btn.backgroundColor = .black
        return btn
    }()
    
    lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 13, weight: .medium )
//        label.textColor = .white
        return label
    }()
    
    lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 10, weight: .regular)
//        label.textColor = .white
        return label
    }()
    
    lazy var cardImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.layer.masksToBounds = true
//        img.image = UIImage("")?.withRenderingMode(.alwaysTemplate).withTintColor(.white)
//        img.backgroundColor = UIColor(red: 0.90, green: 0.04, blue: 0.08, alpha: 0.2)
      
        return img
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
        self.setupConstraints() 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.addSubview(self.cardContainerView)
        self.cardContainerView.addSubview(self.overlayView)
        self.cardContainerView.addSubview(self.titleImage)
        self.cardContainerView.addSubview(self.subTitleLabel)
        self.cardContainerView.addSubview(self.priceLabel)
        self.cardContainerView.addSubview(self.cardImage)
    }
    
    public func setupCell(data: CardModel) {
        self.titleImage.image = UIImage(named: data.titleCard ?? "")
        self.subTitleLabel.text = data.subTitleCard
        self.priceLabel.text = data.priceCard
        self.cardImage.image = UIImage(named: data.imageCard ?? "")
    }
    
    private func setupConstraints() {
        
        self.containerLeadingConstraints = cardContainerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30)
        self.containerLeadingConstraints?.isActive = true
        
        self.containerTopConstraints = cardContainerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 15)
        self.containerTopConstraints?.isActive = true
        
        self.containerBottomConstraints = cardContainerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15)
        self.containerBottomConstraints?.isActive = true
        
        self.containerTrailingConstraints = cardContainerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30)
        self.containerTrailingConstraints?.isActive = true
        
        self.overlayView.pin(to: self.cardContainerView)
        
        NSLayoutConstraint.activate([
            self.titleImage.topAnchor.constraint(equalTo: self.cardContainerView.topAnchor, constant: 28),
            self.titleImage.leadingAnchor.constraint(equalTo: self.cardContainerView.leadingAnchor, constant: 28),
            self.titleImage.widthAnchor.constraint(equalToConstant: 100),
            self.titleImage.heightAnchor.constraint(equalToConstant: 30),
            
            self.subTitleLabel.topAnchor.constraint(equalTo: self.titleImage.bottomAnchor, constant: 24),
            self.subTitleLabel.leadingAnchor.constraint(equalTo: self.cardContainerView.leadingAnchor, constant: 28),
            self.subTitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.priceLabel.topAnchor.constraint(equalTo: self.subTitleLabel.bottomAnchor, constant: 8),
            self.priceLabel.leadingAnchor.constraint(equalTo: self.cardContainerView.leadingAnchor, constant: 28),
            self.priceLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.cardImage.bottomAnchor.constraint(equalTo: self.cardContainerView.bottomAnchor, constant: 50),
            self.cardImage.trailingAnchor.constraint(equalTo: self.cardContainerView.trailingAnchor, constant: 0),
            self.cardImage.widthAnchor.constraint(equalToConstant: 123),
            self.cardImage.heightAnchor.constraint(equalToConstant: 222),
        ])
    }
}
