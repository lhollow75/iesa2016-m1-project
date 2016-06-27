//
//  StandStoreRemoveTest.swift
//  Paris Games Week
//
//  Created by Julien Sallei on 24/06/2016.
//  Copyright © 2016 Paris Games Week. All rights reserved.
//

import XCTest

class StandStoreRemoveTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func test_removeStand() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let standStore = StandStore()
        let valueControl = standStore.stands[0]
        print(valueControl)
        standStore.stands.removeAtIndex(0)
        XCTAssertNotEqual(standStore.stands[0], valueControl)
    }

}
