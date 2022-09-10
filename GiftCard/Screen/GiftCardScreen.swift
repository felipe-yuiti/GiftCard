//
//  GiftCardScreen.swift
//  GiftCard
//
//  Created by Felipe Yuiti on 01/09/22.
//

import UIKit

class GiftCardScreen: UIView {

    lazy var tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .white
        table.register(GiftCardTableViewCell.self, forCellReuseIdentifier: GiftCardTableViewCell.idetenfier)
        table.register(FilterTableViewCell.self, forCellReuseIdentifier: FilterTableViewCell.identifier)
        return table
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
        self.setupConstraints()
    }
    
    public func setupTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.addSubview(self.tableView)
    }
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            self.tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.tableView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
}
