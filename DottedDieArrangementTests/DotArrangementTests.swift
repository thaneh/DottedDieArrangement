//
//  DotArrangementTests.swift
//  TeamDiceRollerTests
//
//  Created by Thane Heninger on 11/8/20.
//

import XCTest
@testable import DottedDieArrangement

class DotArrangementTests: XCTestCase {
    let noDots = [false, false, false, false, false]
    let centerDot = [false, false, true, false, false]
    let outerDots = [true, false, false, false, true]
    let threeDots = [true, false, true, false, true]
    let allDots = [true, true, true, true, true]
    let mid2Dots = [false, true, false, true, false]
    let innerThree = [false, true, true, true, false]
    
    func testOne() throws {
        let arrangement = DotArrangement(quantity: 1)
        XCTAssertEqual(arrangement.farSideCount, 0)
        XCTAssertEqual(arrangement.centerCount, 1)
        XCTAssertEqual(arrangement.midSideCount, 0)
        
        XCTAssertEqual(arrangement.farLeftDots, noDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, noDots)
    }
    
    func testTwo() throws {
        let arrangement = DotArrangement(quantity: 2)
        XCTAssertEqual(arrangement.farSideCount, 1)
        XCTAssertEqual(arrangement.centerCount, 0)
        XCTAssertEqual(arrangement.midSideCount, 0)
        
        XCTAssertEqual(arrangement.farLeftDots, [false, false, false, false, true])
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, [true, false, false, false, false])
    }
    
    func testThree() throws {
        let arrangement = DotArrangement(quantity: 3)
        XCTAssertEqual(arrangement.farSideCount, 1)
        XCTAssertEqual(arrangement.centerCount, 1)
        XCTAssertEqual(arrangement.midSideCount, 0)
        
        XCTAssertEqual(arrangement.farLeftDots, [false, false, false, false, true])
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, [true, false, false, false, false])
    }
    
    func testFour() throws {
        let arrangement = DotArrangement(quantity: 4)
        XCTAssertEqual(arrangement.farSideCount, 2)
        XCTAssertEqual(arrangement.centerCount, 0)
        XCTAssertEqual(arrangement.midSideCount, 0)
        
        XCTAssertEqual(arrangement.farLeftDots, outerDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, outerDots)
    }
    
    func testFive() throws {
        let arrangement = DotArrangement(quantity: 5)
        XCTAssertEqual(arrangement.farSideCount, 2)
        XCTAssertEqual(arrangement.centerCount, 1)
        XCTAssertEqual(arrangement.midSideCount, 0)
        
        XCTAssertEqual(arrangement.farLeftDots, outerDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, outerDots)
    }
    
    func testSix() throws {
        let arrangement = DotArrangement(quantity: 6)
        XCTAssertEqual(arrangement.farSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 0)
        XCTAssertEqual(arrangement.midSideCount, 0)
        
        XCTAssertEqual(arrangement.farLeftDots, threeDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, threeDots)
    }
    
    func testSeven() throws {
        let arrangement = DotArrangement(quantity: 7)
        XCTAssertEqual(arrangement.farSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 1)
        XCTAssertEqual(arrangement.midSideCount, 0)
        
        XCTAssertEqual(arrangement.farLeftDots, threeDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, threeDots)
    }
    
    func testEight() throws {
        let arrangement = DotArrangement(quantity: 8)
        XCTAssertEqual(arrangement.farSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 2)
        XCTAssertEqual(arrangement.midSideCount, 0)
        
        XCTAssertEqual(arrangement.farLeftDots, threeDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, outerDots)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, threeDots)
    }
    
    func testNine() throws {
        let arrangement = DotArrangement(quantity: 9)
        XCTAssertEqual(arrangement.farSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 3)
        XCTAssertEqual(arrangement.midSideCount, 0)
        
        XCTAssertEqual(arrangement.farLeftDots, threeDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, threeDots)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, threeDots)
    }
    
    func testTen() throws {
        let arrangement = DotArrangement(quantity: 10)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 0)
        XCTAssertEqual(arrangement.centerCount, 0)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testEleven() throws {
        let arrangement = DotArrangement(quantity: 11)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 0)
        XCTAssertEqual(arrangement.centerCount, 1)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, noDots)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, noDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testTwelve() throws {
        let arrangement = DotArrangement(quantity: 12)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 1)
        XCTAssertEqual(arrangement.centerCount, 0)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, [false, false, false, true, false])
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, [false, true, false, false, false])
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testThirteen() throws {
        let arrangement = DotArrangement(quantity: 13)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 1)
        XCTAssertEqual(arrangement.centerCount, 1)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, [false, false, false, true, false])
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, [false, true, false, false, false])
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testFourteen() throws {
        let arrangement = DotArrangement(quantity: 14)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 2)
        XCTAssertEqual(arrangement.centerCount, 0)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, mid2Dots)
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, mid2Dots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testFifteen() throws {
        let arrangement = DotArrangement(quantity: 15)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 2)
        XCTAssertEqual(arrangement.centerCount, 1)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, mid2Dots)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, mid2Dots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testSixteen() throws {
        let arrangement = DotArrangement(quantity: 16)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 0)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, innerThree)
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, innerThree)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testSeventeen() throws {
        let arrangement = DotArrangement(quantity: 17)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 1)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, innerThree)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, innerThree)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testEighteen() throws {
        let arrangement = DotArrangement(quantity: 18)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 2)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, innerThree)
        XCTAssertEqual(arrangement.centerDots, mid2Dots)
        XCTAssertEqual(arrangement.midRightDots, innerThree)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testNineteen() throws {
        let arrangement = DotArrangement(quantity: 19)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 3)
        XCTAssertEqual(arrangement.centerCount, 3)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, innerThree)
        XCTAssertEqual(arrangement.centerDots, innerThree)
        XCTAssertEqual(arrangement.midRightDots, innerThree)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testTwenty() throws {
        let arrangement = DotArrangement(quantity: 20)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 5)
        XCTAssertEqual(arrangement.centerCount, 0)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, allDots)
        XCTAssertEqual(arrangement.centerDots, noDots)
        XCTAssertEqual(arrangement.midRightDots, allDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testTwentyOne() throws {
        let arrangement = DotArrangement(quantity: 21)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 5)
        XCTAssertEqual(arrangement.centerCount, 1)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, allDots)
        XCTAssertEqual(arrangement.centerDots, centerDot)
        XCTAssertEqual(arrangement.midRightDots, allDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testTwentyTwo() throws {
        let arrangement = DotArrangement(quantity: 22)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 5)
        XCTAssertEqual(arrangement.centerCount, 2)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, allDots)
        XCTAssertEqual(arrangement.centerDots, mid2Dots)
        XCTAssertEqual(arrangement.midRightDots, allDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testTwentyThree() throws {
        let arrangement = DotArrangement(quantity: 23)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 5)
        XCTAssertEqual(arrangement.centerCount, 3)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, allDots)
        XCTAssertEqual(arrangement.centerDots, innerThree)
        XCTAssertEqual(arrangement.midRightDots, allDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testTwentyFour() throws {
        let arrangement = DotArrangement(quantity: 24)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 5)
        XCTAssertEqual(arrangement.centerCount, 4)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, allDots)
        XCTAssertEqual(arrangement.centerDots, [true, true, false, true, true])
        XCTAssertEqual(arrangement.midRightDots, allDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
    
    func testTwentyFive() throws {
        let arrangement = DotArrangement(quantity: 25)
        XCTAssertEqual(arrangement.farSideCount, 5)
        XCTAssertEqual(arrangement.midSideCount, 5)
        XCTAssertEqual(arrangement.centerCount, 5)
        
        XCTAssertEqual(arrangement.farLeftDots, allDots)
        XCTAssertEqual(arrangement.midLeftDots, allDots)
        XCTAssertEqual(arrangement.centerDots, allDots)
        XCTAssertEqual(arrangement.midRightDots, allDots)
        XCTAssertEqual(arrangement.farRightDots, allDots)
    }
}
