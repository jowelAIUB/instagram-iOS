//
//  ModelProtocols.swift
//  instagram
//
//  Created by Admin on 19/03/2019.
//  Copyright © 2019 UgoRound. All rights reserved.
//

import Foundation


public protocol FeedListProtocol {
    var feeds:[Feed]? {set get}
    func getLatedFeedList()-> [Feed]?
    func addNewFeed(feed:Feed?)-> Bool
}
