//
//  GiftCardTableViewCell.swift
//  GiftCard
//
//  Created by Felipe Yuiti on 02/09/22.
//

import UIKit

class GiftCardTableViewCell: UITableViewCell {
    
    static var idetenfier: String = "GiftCardTableViewCell"
    
    lazy var netflixCard: CustomCardView = {
        let nf = CustomCardView()
        nf.translatesAutoresizingMaskIntoConstraints = false
//        nf.overlayView.backgroundColor = .black
        return nf
    }()
    
    lazy var spotifyCard: CustomCardView = {
        let sp = CustomCardView()
        sp.translatesAutoresizingMaskIntoConstraints = false
        sp.overlayView.backgroundColor = .green
        return sp
    }()
    
    lazy var googleCard: CustomCardView = {
        let go = CustomCardView()
        go.translatesAutoresizingMaskIntoConstraints = false
        go.overlayView.backgroundColor = .white
        return go
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
        self.contentView.addSubview(self.netflixCard)
    }
    
    public func setupCell(data: CardModel) {
        self.netflixCard.setupCell(data: data)
    }
    
    private func setupConstraints() {
        self.netflixCard.pin(to: self)
    }
}
