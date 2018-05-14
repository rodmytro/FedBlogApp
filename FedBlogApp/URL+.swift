//
//  URL+.swift
//  FedBlogApp
//
//  Created by Руслан Федорович on 14.05.2018.
//  Copyright © 2018 Руслан Федорович. All rights reserved.
//

import Foundation
extension URL {
    func withAdditionalPath(path: [String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        for unit in path{
        components?.path += "/\(unit)"       }/*components?.queryItems = queries.flatMap{URLQueryItem(name: $0.0, value: $0.1)}*/
        return components?.url
    }
}
let mainURL = URL(string: "http://fed-blog.herokuapp.com/api/v1/posts")!
