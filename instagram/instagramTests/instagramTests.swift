//
//  instagramTests.swift
//  instagramTests
//
//  Created by Admin on 15/03/2019.
//  Copyright © 2019 UgoRound. All rights reserved.
//

import XCTest
@testable import instagram

class instagramTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func testAddNewNode_createdDate_nil() {
       let feed = Feed.createNewFeed(feedTitle: nil, feedCreatedDate: "")
        
        XCTAssertNotNil(feed)
    }
    
    func testAddNewNode_nill() {
        let feedList:FeedListProtocol = FeedList.init()
         let feed = Feed.createNewFeed(feedTitle: nil, feedCreatedDate: "")
        let r = feedList.addNewFeed(feed: feed)
        XCTAssertEqual(r, true)
    }
    
    func test_FeedCreate_success() {
         let feedList:FeedListProtocol = FeedList.init()
         let feed = Feed.createNewFeed(feedTitle: "jowel post", feedCreatedDate: "12/34/2019")
        XCTAssertNotNil(feed)
       
        let r = feedList.addNewFeed(feed: feed)
        XCTAssertEqual(r, true)
        
        XCTAssertEqual(feedList.feeds?.count, 2)
        
    }
    
    
    func test_getFeedList() {
        let feedList:FeedListProtocol = FeedList.init()
       // XCTAssertEqual(feedList.feeds., )
        
    }
    
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
