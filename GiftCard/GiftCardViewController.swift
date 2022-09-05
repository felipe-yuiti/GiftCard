//
//  GiftCardViewController.swift
//  GiftCard
//
//  Created by Felipe Yuiti on 01/09/22.
//

import Foundation
import UIKit


class GiftCardViewController: UIViewController {
    
    var screen: GiftCardScreen?
    
    override func loadView() {
        self.screen = GiftCardScreen()
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.screen?.setupTableView(delegate: self, dataSource: self)
    }
}

extension GiftCardViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: GiftCardTableViewCell? = tableView.dequeueReusableCell(withIdentifier: GiftCardTableViewCell.idetenfier, for: indexPath) as? GiftCardTableViewCell
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}
