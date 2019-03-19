//
//  Feed.swift
//  instagram
//
//  Created by Admin on 19/03/2019.
//  Copyright © 2019 UgoRound. All rights reserved.
//

import Foundation


open class Feed {
    var feedTitle:String?
    var feedCreateDate:String?
    
    init(feedTitle:String?,feedCreatedDate:String?) {
        self.feedTitle = feedTitle
        self.feedCreateDate = feedCreatedDate
    }
    
    static func createNewFeed(feedTitle:String?,feedCreatedDate:String?)-> Feed? {
        
        if feedTitle == nil || feedCreatedDate == nil {
            return nil
        }
        
        return Feed.init(feedTitle: feedTitle, feedCreatedDate: feedCreatedDate)
    }
    
}
