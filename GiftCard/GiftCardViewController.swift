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
    
    var dataUser: [CardModel] = [CardModel (
        titleCard: "netflix",
        subTitleCard: "Netflix gift card",
        priceCard: "R$ 35,00 - R$ 200,00",
        imageCard: "netflix-image"),
                                 
    CardModel(
        titleCard: "spotify",
        subTitleCard: "Spotify gift card",
        priceCard: "R$ 35,00 - R$ 200,00",
        imageCard: "spotify-image"),
                                 
    CardModel(
        titleCard: "google",
        subTitleCard: "Google gift card",
        priceCard: "R$ 35,00 - R$ 200,00",
        imageCard: "google-image"),
    ]
    
    var dataFilter: [FilterModel] = [   FilterModel (
        
        image: "presente",
        text: "todos"
    ),
    
    FilterModel (
        image: "video-game",
        text: "games"
    ),
    
    FilterModel (
        image: "fone",
        text: "música"
    ),
    
    FilterModel (
        image: "tv",
        text: "tv's"
    ),
    
    FilterModel (
        image: "pc",
        text: "filmes e series"
    ),
    
    FilterModel (
        image: "pizza",
        text: "delivery de comidas"
    ),
    
    FilterModel (
        image: "carro",
        text: "transportes"
    ),]
    
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
        return self.dataUser.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 3 {
            let cell: FilterTableViewCell? = tableView.dequeueReusableCell(withIdentifier: FilterTableViewCell.identifier, for: indexPath) as? FilterTableViewCell
            cell?.dataCollection(data: self.dataFilter)
            return cell ?? UITableViewCell()
        }
        
        let cell: GiftCardTableViewCell? = tableView.dequeueReusableCell(withIdentifier: GiftCardTableViewCell.idetenfier, for: indexPath) as? GiftCardTableViewCell
        cell?.setupCell(data: self.dataUser[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
}
