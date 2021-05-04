//
//  Card.swift
//  DeckOfOneCard
//
//  Created by Bryson Jones on 5/4/21.
//

import Foundation

struct Card: Decodable {
    
    let value: String
    let suit: String
    let image: URL
    
    enum CodingKeys: String, CodingKey {
        case value
        case suit
        case image
    }
}//End of struct

struct TopLevelObject: Decodable {
    
    let cards: [Card]
    
    enum CodingKeys: String, CodingKey {
        case cards
    }
}//End of struct
