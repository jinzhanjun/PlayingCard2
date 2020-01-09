//
//  CardModel.swift
//  PlayingCard2
//
//  Created by jinzhanjun on 2019/12/26.
//  Copyright © 2019 jinzhanjun. All rights reserved.
//

import Foundation

struct CardModel: CustomStringConvertible {
    var description: String {
        return "\(suit) \(numic)"
    }
    
    
    var suit: Suit
    var numic: Numic
    
    enum Suit: String, CustomStringConvertible {
        var description: String {
            switch self {
            case .clubs: return "♣️"
            case .diamonds: return "♦️"
            case .hearts: return "♥️"
            case .spades: return "♠️"
            }
        }
        
        case spades = "♠️"
        case hearts = "♥️"
        case clubs = "♣️"
        case diamonds = "♦️"
        
        static var all: [Suit] {
            return [Suit.spades, .clubs, .diamonds, .hearts]
        }
    }
    
    enum Numic: CustomStringConvertible {
        var description: String {
            switch self {
            case .ace: return "1"
            case .number( let num): return "\(num)"
            case .Jqk(let string): return string
            }
        }
        
        case ace
        case number(Int)
        case Jqk(String)
        
        var order: Int {
            switch self {
            case .ace:
                return 1
            case .number(let num):
                return num
            case .Jqk(let string) where string == "J": return 11
                case .Jqk(let string) where string == "Q": return 12
                case .Jqk(let string) where string == "K": return 13
            default: return 0
            }
        }
        
        static var all: [Numic] {
            var suitArray = [Numic]()
            suitArray.append(Numic.ace)
            for num in 2...10 {
                suitArray.append(Numic.number(num))
            }
            suitArray.append(Numic.Jqk("J"))
            suitArray.append(Numic.Jqk("Q"))
            suitArray.append(Numic.Jqk("K"))
            
            return suitArray
        }
    }
}
