import Foundation

struct CardModel {
    
    var titleCard: String?
    var subTitleCard: String?
    var priceCard: String?
    var imageCard: String?
    var cardList: [CardModel]?
}

  var cardData = [
    CardModel(
        titleCard: "netflix",
        subTitleCard: "Netflix gift card",
        priceCard: "R$ 35,00 - R$ 200,00",
        imageCard: "netflix-image",
        cardList: [
            CardModel(
                titleCard: "netflix",
                subTitleCard: "Netflix gift card",
                priceCard: "R$ 35,00",
                imageCard: "netflix-image"
            ),
            CardModel (
                titleCard: "netflix",
                subTitleCard: "Netflix gift card",
                priceCard: "R$ 50,00",
                imageCard: "netflix-image"
            ),
            CardModel (
                titleCard: "netflix",
                subTitleCard: "Netflix gift card",
                priceCard: "R$ 70,00",
                imageCard: "netflix-image"
            ),
            CardModel (
                titleCard: "netflix",
                subTitleCard: "Netflix gift card",
                priceCard: "R$ 100,00",
                imageCard: "netflix-image"
            ),
            CardModel (
                titleCard: "netflix",
                subTitleCard: "Netflix gift card",
                priceCard: "R$ 200,00",
                imageCard: "netflix-image"
            )
        ]
    ),
    CardModel(
        titleCard: "spotify",
        subTitleCard: "Spotify gift card",
        priceCard: "R$ 35,00 - R$ 200,00",
        imageCard: "spotify-image",
        cardList: [
            CardModel(
                titleCard: "spotify",
                subTitleCard: "Spotify gift card",
                priceCard: "R$ 35,00",
                imageCard: "spotify-image"
            ),
            CardModel (
                titleCard: "spotify",
                subTitleCard: "Spotify gift card",
                priceCard: "R$ 50,00",
                imageCard: "spotify-image"
            ),
            CardModel (
                titleCard: "spotify",
                subTitleCard: "Spotify gift card",
                priceCard: "R$ 70,00",
                imageCard: "spotify-image"
            ),
            CardModel (
                titleCard: "spotify",
                subTitleCard: "Spotify gift card",
                priceCard: "R$ 100,00",
                imageCard: "spotify-image"
            ),
            CardModel (
                titleCard: "spotify",
                subTitleCard: "Spotify gift card",
                priceCard: "R$ 200,00",
                imageCard: "spotify-image"
            )
        ]
    ),
    CardModel(
        titleCard: "google",
        subTitleCard: "Google gift card",
        priceCard: "R$ 35,00 - R$ 200,00",
        imageCard: "google-image",
        cardList: [
            CardModel(
                titleCard: "google",
                subTitleCard: "Google gift card",
                priceCard: "R$ 35,00",
                imageCard: "google-image"
            ),
            CardModel (
                titleCard: "google",
                subTitleCard: "Google gift card",
                priceCard: "R$ 50,00",
                imageCard: "google-image"
            ),
            CardModel (
                titleCard: "google",
                subTitleCard: "Google gift card",
                priceCard: "R$ 70,00",
                imageCard: "google-image"
            ),
            CardModel (
                titleCard: "google",
                subTitleCard: "Google gift card",
                priceCard: "R$ 100,00",
                imageCard: "google-image"
            ),
            CardModel (
                titleCard: "google",
                subTitleCard: "Google gift card",
                priceCard: "R$ 200,00",
                imageCard: "google-image"
            )
        ]
    )
]
