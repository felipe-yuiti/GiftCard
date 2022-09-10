//
//  FilterTableViewCell.swift
//  GiftCard
//
//  Created by Felipe Yuiti on 06/09/22.
//

import UIKit

class FilterTableViewCell: UITableViewCell {
    
    var filterTableViewCellScreen: FilterTableViewCellScreen = FilterTableViewCellScreen()
    var data: [FilterModel] = []
    static let identifier: String = "FilterTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configAddSubView()
        self.configConstraints()
        self.filterTableViewCellScreen.configProtocolsCollectionView(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configAddSubView() {
        self.filterTableViewCellScreen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.filterTableViewCellScreen)
    }
     
    public func dataCollection(data:[FilterModel]) {
        self.data = data
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            self.filterTableViewCellScreen.topAnchor.constraint(equalTo: self.topAnchor),
            self.filterTableViewCellScreen.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.filterTableViewCellScreen.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.filterTableViewCellScreen.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
}

extension FilterTableViewCell:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: FilterCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: FilterCollectionViewCell.identifier, for: indexPath) as? FilterCollectionViewCell
        cell?.setupCell(data: self.data[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 190, height: 140)
    }
}
