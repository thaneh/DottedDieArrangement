//
//  DotArrangement1Tests.swift
//  DottedDieArrangementTests
//
//  Created by Thane Heninger on 11/9/20.
//

import XCTest
@testable import DottedDieArrangement

class DotArrangementTests: XCTestCase {
    func testOneCount() throws {
        let arrangement = DotArrangement(quantity: 1)
        XCTAssertEqual(arrangement.farSideCount, 0)
        XCTAssertEqual(arrangement.centerCount, 1)
        XCTAssertEqual(arrangement.midSideCount, 0)
    }
    
    func testTwoCount() throws {
        let arrangement = DotArrangement(quantity: 2)
        XCTAssertEqual(arrangement.farSideCount, 1)
        XCTAssertEqual(arrangement.centerCount, 0)
        XCTAssertEqual(arrangement.midSideCount, 0)
    }
    
    func testThreeCount() throws {
        let arrangement = DotArrangement(quantity: 3)
        XCTAssertEqual(arrangement.farSideCount, 1)
        XCTAssertEqual(arrangement.centerCount, 1)
        XCTAssertEqual(arrangement.midSideCount, 0)
    }
    func testFourCount() throws {
        let arrangement = DotArrangement(quantity: 4)
        XCTAssertEqual(arrangement.farSideCount, 2)
        XCTAssertEqual(arrangement.centerCount, 0)
        XCTAssertEqual(arrangement.midSideCount, 0)
    }
    func testFiveCount() throws {
        let arrangement = DotArrangement(quantity: 5)
        XCTAssertEqual(arrangement.farSideCount, 2)
        XCTAssertEqual(arrangement.centerCount, 1)
        XCTAssertEqual(arrangement.midSideCount, 0)
    }
    func testSixCount() throws {
        let arrangement = DotArrangement(quantity: 6)
        XCTAssertEqual(arrangement.farSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 0)
        XCTAssertEqual(arrangement.midSideCount, 0)
    }
    func testSevenCount() throws {
        let arrangement = DotArrangement(quantity: 7)
        XCTAssertEqual(arrangement.farSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 1)
        XCTAssertEqual(arrangement.midSideCount, 0)
    }
    func testEightCount() throws {
        let arrangement = DotArrangement(quantity: 8)
        XCTAssertEqual(arrangement.farSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 2)
        XCTAssertEqual(arrangement.midSideCount, 0)
    }
    func testNineCount() throws {
        let arrangement = DotArrangement(quantity: 9)
        XCTAssertEqual(arrangement.farSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 3)
        XCTAssertEqual(arrangement.midSideCount, 0)
    }
    func testTenCount() throws {
        let arrangement = DotArrangement(quantity: 10)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 0)
        XCTAssertEqual(arrangement.centerCount, 0)
    }
    func testElevenCount() throws {
        let arrangement = DotArrangement(quantity: 11)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 0)
        XCTAssertEqual(arrangement.centerCount, 1)
    }
    func testTwelveCount() throws {
        let arrangement = DotArrangement(quantity: 12)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 1)
        XCTAssertEqual(arrangement.centerCount, 0)
    }
    func testThirteenCount() throws {
        let arrangement = DotArrangement(quantity: 13)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 1)
        XCTAssertEqual(arrangement.centerCount, 1)
    }
    func testFourteenCount() throws {
        let arrangement = DotArrangement(quantity: 14)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 2)
        XCTAssertEqual(arrangement.centerCount, 0)
    }
    func testFifteenCount() throws {
        let arrangement = DotArrangement(quantity: 15)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 2)
        XCTAssertEqual(arrangement.centerCount, 1)
    }
    func testSixteenCount() throws {
        let arrangement = DotArrangement(quantity: 16)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 0)
    }
    func testSeventeenCount() throws {
        let arrangement = DotArrangement(quantity: 17)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 1)
    }
    func testEighteenCount() throws {
        let arrangement = DotArrangement(quantity: 18)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 2)
    }
    func testNineteenCount() throws {
        let arrangement = DotArrangement(quantity: 19)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 3)
    }
    func testTwentyCount() throws {
        let arrangement = DotArrangement(quantity: 20)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 5)
        XCTAssertEqual(arrangement.centerCount, 0)
    }
    func testTwentyOneCount() throws {
        let arrangement = DotArrangement(quantity: 21)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 5)
        XCTAssertEqual(arrangement.centerCount, 1)
    }
    func testTwentyTwoCount() throws {
        let arrangement = DotArrangement(quantity: 22)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 5)
        XCTAssertEqual(arrangement.centerCount, 2)
    }
    func testTwentyThreeCount() throws {
        let arrangement = DotArrangement(quantity: 23)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 5)
        XCTAssertEqual(arrangement.centerCount, 3)
    }
    func testTwentyFourCount() throws {
        let arrangement = DotArrangement(quantity: 24)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 5)
        XCTAssertEqual(arrangement.centerCount, 4)
    }
    func testTwentyFiveCount() throws {
        let arrangement = DotArrangement(quantity: 25)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 5)
        XCTAssertEqual(arrangement.centerCount, 5)
    }
    
    let noDots = [false, false, false, false, false]
    let centerDot = [false, false, true, false, false]
    let outerDots = [true, false, false, false, true]
    let threeDots = [true, false, true, false, true]
    let allDots = [true, true, true, true, true]
    let mid2Dots = [false, true, false, true, false]
    let innerThree = [false, true, true, true, false]

    func testOnePosition() throws {
        let arrangement = DotArrangement(quantity: 1)
        
        XCTAssertEqual(arrangement.farLeftDots, noDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, noDots)
    }
    
    func testTwoPosition() throws {
        let arrangement = DotArrangement(quantity: 2)
        
        XCTAssertEqual(arrangement.farLeftDots, [false, false, false, false, true])
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, [true, false, false, false, false])
    }

    func testThreePosition() throws {
        let arrangement = DotArrangement(quantity: 3)
        
        XCTAssertEqual(arrangement.farLeftDots, [false, false, false, false, true])
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, [true, false, false, false, false])
    }
    
    func testFourPosition() throws {
        let arrangement = DotArrangement(quantity: 4)
        
        XCTAssertEqual(arrangement.farLeftDots, outerDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, outerDots)
    }
    
    func testFivePosition() throws {
        let arrangement = DotArrangement(quantity: 5)
        
        XCTAssertEqual(arrangement.farLeftDots, outerDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, outerDots)
    }
    
    func testSixPosition() throws {
        let arrangement = DotArrangement(quantity: 6)
        
        XCTAssertEqual(arrangement.farLeftDots, threeDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, threeDots)
    }
    
    func testSevenPosition() throws {
        let arrangement = DotArrangement(quantity: 7)
        
        XCTAssertEqual(arrangement.farLeftDots, threeDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, threeDots)
    }
    
    func testEightPosition() throws {
        let arrangement = DotArrangement(quantity: 8)
        
        XCTAssertEqual(arrangement.farLeftDots, threeDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, outerDots)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, threeDots)
    }

    func testNinePosition() throws {
        let arrangement = DotArrangement(quantity: 9)
        
        XCTAssertEqual(arrangement.farLeftDots, threeDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, threeDots)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, threeDots)
    }
    
    func testTenPosition() throws {
        let arrangement = DotArrangement(quantity: 10)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testElevenPosition() throws {
        let arrangement = DotArrangement(quantity: 11)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testTwelvePosition() throws {
        let arrangement = DotArrangement(quantity: 12)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, [false, false, false, true, false])
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, [false, true, false, false, false])
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }

    func testThirteenPosition() throws {
        let arrangement = DotArrangement(quantity: 13)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, [false, false, false, true, false])
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, [false, true, false, false, false])
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testFourteenPosition() throws {
        let arrangement = DotArrangement(quantity: 14)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, mid2Dots)
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, mid2Dots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testFifteenPosition() throws {
        let arrangement = DotArrangement(quantity: 15)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, mid2Dots)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, mid2Dots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testSixteenPosition() throws {
        let arrangement = DotArrangement(quantity: 16)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, innerThree)
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, innerThree)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testSeventeenPosition() throws {
        let arrangement = DotArrangement(quantity: 17)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, innerThree)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, innerThree)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testEighteenPosition() throws {
        let arrangement = DotArrangement(quantity: 18)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, innerThree)
        XCTAssertEqual(arrangement.centerDots, mid2Dots)
        XCTAssertEqual(arrangement.midRightDots, innerThree)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testNineteenPosition() throws {
        let arrangement = DotArrangement(quantity: 19)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, innerThree)
        XCTAssertEqual(arrangement.centerDots, innerThree)
        XCTAssertEqual(arrangement.midRightDots, innerThree)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testTwentyPosition() throws {
        let arrangement = DotArrangement(quantity: 20)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, allDots)
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, allDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testTwentyOnePosition() throws {
        let arrangement = DotArrangement(quantity: 21)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, allDots)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, allDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testTwentyTwoPosition() throws {
        let arrangement = DotArrangement(quantity: 22)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, allDots)
        XCTAssertEqual(arrangement.centerDots, mid2Dots)
        XCTAssertEqual(arrangement.midRightDots, allDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testTwentyThreePosition() throws {
        let arrangement = DotArrangement(quantity: 23)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, allDots)
        XCTAssertEqual(arrangement.centerDots, innerThree)
        XCTAssertEqual(arrangement.midRightDots, allDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testTwentyFourPosition() throws {
        let arrangement = DotArrangement(quantity: 24)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, allDots)
        XCTAssertEqual(arrangement.centerDots, [true, true, false, true, true])
        XCTAssertEqual(arrangement.midRightDots, allDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testTwentyFivePosition() throws {
        let arrangement = DotArrangement(quantity: 25)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, allDots)
        XCTAssertEqual(arrangement.centerDots, allDots)
        XCTAssertEqual(arrangement.midRightDots, allDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
}
