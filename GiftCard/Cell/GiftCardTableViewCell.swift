//
//  GiftCardTableViewCell.swift
//  GiftCard
//
//  Created by Felipe Yuiti on 02/09/22.
//

import UIKit

class GiftCardTableViewCell: UITableViewCell {
    
    var containerLeadingConstraints: NSLayoutConstraint?
    var containerTopConstraints: NSLayoutConstraint?
    var containerTrailingConstraints: NSLayoutConstraint?
    var containerBottomConstraints: NSLayoutConstraint?
    
    static var idetenfier: String = "GiftCardTableViewCell"
    
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
    
    lazy var viewImage: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .black
        return v
    }()
    
    lazy var cardView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .clear
        v.layer.borderWidth = 1
        v.layer.borderColor = UIColor.white.cgColor
        v.layer.cornerRadius = 25
        return v
    }()
    
    lazy var overlayView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        return v
    }()
    
    lazy var titleImageButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .black
        btn.setBackgroundImage(UIImage(named: "netflix"), for: .normal)
        return btn
    }()
    
    lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 13, weight: .medium )
        label.text = "Netflix Gift Card"
        label.textColor = .white
        return label
    }()
    
    lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        label.text = "R$ 30,00 - R$200,00"
        label.textColor = .white
        return label
    }()
    
    lazy var cardImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "netflix-1")?.withRenderingMode(.alwaysTemplate).withTintColor(.white)
        img.backgroundColor = UIColor(red: 0.90, green: 0.04, blue: 0.08, alpha: 0.2)
        return img
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupView()
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.contentView.addSubview(self.cardContainerView)
        self.cardContainerView.addSubview(self.overlayView)
        self.cardContainerView.addSubview(self.titleImageButton)
        self.cardContainerView.addSubview(self.subTitleLabel)
        self.cardContainerView.addSubview(self.priceLabel)
        self.cardContainerView.addSubview(self.cardImage)
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
            self.titleImageButton.topAnchor.constraint(equalTo: self.cardContainerView.topAnchor, constant: 28),
            self.titleImageButton.leadingAnchor.constraint(equalTo: self.cardContainerView.leadingAnchor, constant: 28),
            self.titleImageButton.widthAnchor.constraint(equalToConstant: 100),
            self.titleImageButton.heightAnchor.constraint(equalToConstant: 30),
            
            self.subTitleLabel.topAnchor.constraint(equalTo: self.titleImageButton.bottomAnchor, constant: 24),
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
