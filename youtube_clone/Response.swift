//
//  Response.swift
//  youtube_clone
//
//  Created by Ritesh Singh on 23/12/21.
//

import Foundation

struct Response : Decodable {
    var items : [Video]?
    enum CodingKeys : String , CodingKey {
        case items
    }
    init(from decoder : Decoder) throws {
        let contianer = try decoder.container(keyedBy: CodingKeys.self)
        self.items  = try contianer.decode([Video].self, forKey: .items)
    }
    
}
