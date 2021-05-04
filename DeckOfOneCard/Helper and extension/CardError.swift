//
//  CardError.swift
//  DeckOfOneCard
//
//  Created by Bryson Jones on 5/4/21.
//  Copyright © 2021 Warren. All rights reserved.
//

import Foundation

enum CardError: LocalizedError {
    
    case invalidURL
    case thrownError(Error)
    case noData
    case unableToDecode
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Internal error. Please update Deck of One"
            
        case .thrownError(let error):
            return error.localizedDescription
            
        case .noData:
            return "The server responded with no data"
            
        case .unableToDecode:
            return "The server responded with bad data. Blame the back end team, not the front end"
        }
    }
}//End of enum
