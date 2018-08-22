//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by Raphael A Franco on 8/21/18.
//  Copyright © 2018 Eleix. All rights reserved.
//

import Foundation

struct PlayingCard: CustomStringConvertible
{
    var description: String {
        return "\(rank)\(suit)"
    }
    
    var suit: Suit
    var rank: Rank
    
   
    // This enum uses "RawData"
    enum Suit: String, CustomStringConvertible {
        var description: String {
            return self.rawValue
        }
        case spades   = "♠️"
        case hearts   = "♥️"
        case clubs    = "♣️"
        case diamonds = "♦️"
        // You need to look under emoji Symbols.
        // Supposely Apple's name for the Red Diamonds is Diamond Suit;
        // however, if you search under Diamond Suit, it only shows
        // the back diamond and the white diamond.
        
        // The variable will be used to populate a deck of cards
        static var all = [Suit.spades, .hearts, .clubs, .diamonds]
    }
    
    // This enum uses "Associated Data:
    enum Rank: CustomStringConvertible {
        var description: String {
            switch self {
            case .ace: return "A"
            case .numeric(let pips): return "\(pips)"
            case .face(let kind): return "\(kind)"
            }
        
        }
        
        case ace
        case face(String)
        case numeric(Int)
        
        // order is a computed value
        var order: Int {
            switch self {
                case .ace: return 1
                case .numeric(let pips): return pips
                case .face(let kind) where kind == "J": return 11
                case .face(let kind) where kind == "Q": return 12
                case .face(let kind) where kind == "K": return 13
                default: return 0
            }
        }
        
        static var all: [Rank] {
            var allRank: [Rank] = [.ace]
            for pips in 2...10 {
                allRank.append(Rank.numeric(pips))
            }
            allRank += [Rank.face("J"), .face("Q"), .face("K")]
            return allRank
        }
    }

}
        
    

