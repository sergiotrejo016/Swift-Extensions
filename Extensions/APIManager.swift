//
//  APIManager.swift
//
//  Created by Sergio Trejo on 14/06/18.
//  Copyright © 2018 Sergio Trejo. All rights reserved.
//

import UIKit

enum Method: String{
    case GET
    case POST
}

class APIManager {
    
    class func genericFetchData<T: Codable>(urlString: String, parameters:[String: Any]?, method: Method = .GET,  completion: @escaping(T?, NSError?) -> Void) {
        
        guard var urlComponents = URLComponents(string: urlString) else {
            let error = NSError(domain: urlString, code: 400, userInfo: ["Error " : "URL error."])
            completion(nil, error)
            return
        }
        
        if let items = create(parameters) {
            urlComponents.queryItems = items
        }
        
        guard let url = urlComponents.url else {
            let error = NSError(domain: "Parameters", code: 400, userInfo: ["Error " : "Unable to create url using parameter you inlcuded."])
            completion(nil, error)
            return
        }
        
        var request = URLRequest(url: url)
    
        request.httpMethod = method.rawValue
        URLSession.shared.dataTask(with: request) { (data, res, error) in
            
            guard let data = data else{
                let error: NSError = error! as NSError
                completion(nil, error)
                return
            }
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            if let obj = try? decoder.decode(T.self, from: data){
                completion(obj, nil)
            } else{
                let error = NSError(domain: urlString, code: 500, userInfo: ["Error" : "The data couldn’t be read because it isn’t in the correct format."])
                completion(nil, error)
            }
            
            }.resume()
    }
    
    private static func create(_ parameters: [String: Any]?) -> [URLQueryItem]? {
        var queryItems = [URLQueryItem]()
        
        guard let unwrappedParameters = parameters else {
            return nil
        }
        
        for (key, value) in unwrappedParameters {
            let strValue = String(describing: value)
            queryItems.append(URLQueryItem(name: key, value: strValue))
        }
        
        return queryItems
    }
    
}
