//
//  FeedList.swift
//  instagram
//
//  Created by Admin on 19/03/2019.
//  Copyright © 2019 UgoRound. All rights reserved.
//

import UIKit




open class FeedList: FeedListProtocol {
    
     public var feeds:[Feed]?
    
   public func addNewFeed(feed:Feed?)-> Bool {
        
        if feed == nil {
            return false
        }
        
        if var feeds = self.feeds {
            feeds.append(feed!)
        } else {
            feeds = [Feed]()
            feeds?.append(feed!)
        }
        
        return true
    }
    
   public func getLatedFeedList() -> [Feed]? {
        
        return feeds;
    }
    
    
}
