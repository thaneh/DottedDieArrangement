//
//  DotArrangement.swift
//  TeamDiceRoller
//
//  Created by Thane Heninger on 10/31/20.
//

import Foundation

struct DotArrangementFinal {
    let quantity: Int
    
    static private let max3x3 = 9
    static private let max3x3Sides = max3x3 / 3 * 2
    
    static private let max5x5 = 25
    static private let max5x5Sides = max5x5 / 5 * 2
    static private let max5x5Sides2 = max5x5 / 5 * 4
    
    var in3x3: Bool {
        quantity <= Self.max3x3
    }
    
    private func sideFor3x3(with quantity: Int) -> Int {
        if quantity <= Self.max3x3Sides {
            return quantity / 2
        } else {
            return Self.max3x3Sides / 2
        }
    }
    
    var farSideCount: Int {
        if in3x3 {
            return sideFor3x3(with: quantity)
        } else {
            return 5
        }
    }
        
    var midSideCount: Int {
        if quantity < Self.max5x5Sides {
            return 0
        } else if quantity < Self.max5x5Sides2 {
            return sideFor3x3(with: quantity - Self.max5x5Sides)
        } else {
            return 5
        }
    }
    
    private func centerFor3x3(with quantity: Int) -> Int {
        if quantity > Self.max3x3Sides {
            return quantity - Self.max3x3Sides
        } else {
            return quantity % 2
        }
    }
    
    var centerCount: Int {
        if quantity < Self.max5x5Sides {
            return centerFor3x3(with: quantity)
        } else if quantity < Self.max5x5Sides2 {
            return centerFor3x3(with: quantity - 10)
        } else {
            return quantity - Self.max5x5Sides2
        }
    }
    
    var farLeftDots: [Bool] {
        [farSideCount > 1, farSideCount > 4, farSideCount > 2,
         farSideCount > 4, farSideCount > 0]
    }
    
    var midLeftDots: [Bool] {
        [midSideCount > 3, midSideCount > 1, midSideCount > 2,
         midSideCount > 0, midSideCount > 3]
    }
    
    var centerDots: [Bool] {
        if quantity < Self.max5x5Sides {
            return [centerCount > 1, centerCount > 3, centerCount % 2 == 1,
                    centerCount > 3, centerCount > 1]
        } else {
            return [centerCount > 3, centerCount > 1, centerCount % 2 == 1,
                    centerCount > 1, centerCount > 3]
        }
    }
    
    var midRightDots: [Bool] {
        [midSideCount > 3, midSideCount > 0, midSideCount > 2,
         midSideCount > 1, midSideCount > 3]
    }
    
    var farRightDots: [Bool] {
        [farSideCount > 0, farSideCount > 4, farSideCount > 2,
         farSideCount > 4, farSideCount > 1]
    }
    
    static func allFalse(_ values: [Bool]) -> Bool {
        values.reduce(into: true) { result, value in
            result = result && !value
        }
    }
}
