//
//  StandStoreAddTest.swift
//  Paris Games Week
//
//  Created by Julien Sallei on 24/06/2016.
//  Copyright © 2016 Paris Games Week. All rights reserved.
//

import XCTest

class StandStoreAddTest: XCTestCase {

    var stand :Stand
    
    override func setUp() {
        super.setUp()
        stand = Stand(name: "Playstation", place: "Ici", infos: "Aujourd'hui")
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func test_add_stand() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let standStore = StandStore()
        standStore.stands.append(stand)
        let last = standStore.stands.count-1
        XCTAssertEqual(standStore.stands[last], stand)
    }
}
