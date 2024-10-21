//
//  TarotCard.swift
//  TarotMaster
//
//  Created by 游哲維 on 2024/10/21.
//

import Foundation

struct TarotCard: Codable {
    let name: String
    let uprightMeaning: String
    let reversedMeaning: String
    let description: String
}

func loadTarotCards() -> [TarotCard] {
    guard let url = Bundle.main.url(forResource: "tarot_cards", withExtension: "json"),
          let data = try? Data(contentsOf: url),
          let tarotCards = try? JSONDecoder().decode([TarotCard].self, from: data) else {
        return []
    }
    return tarotCards
}
