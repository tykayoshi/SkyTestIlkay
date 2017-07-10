//
//  APIManager.swift
//  SkyTestIlkay
//
//  Created by TAE experts on 09/02/2017.
//  Copyright © 2017 IlkayHamit. All rights reserved.
//

import Foundation

class APIManager {
    
    
    //Get data from API and print it out, also print out if success or fail
    func loadData(urlString:String, completion: [City] -> Void) {
        
        //Bypass caching
        let config = NSURLSessionConfiguration.ephemeralSessionConfiguration()
        
        let session = NSURLSession(configuration: config)
        
        let url = NSURL(string: urlString)!
        
        //Async task
        let task = session.dataTaskWithURL(url) { (data, response, error) -> Void in
            
            if error != nil {
                
                print(error!.localizedDescription)
                
            } else {
                
                do {
                    /* .AllowFragments if top level is not an Array or Dictionary*/
                    //Convert the data to JSON using Try/Catch
                    if let json = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments) as? JSONDictionary {
                            
                            //Create city array
                            var city = [City]()
                                //Grabs the info from JSON and adds it into the variables
                               let entry = City(data: json)
                                //Add to array
                                city.append(entry)
                            
                            
                            
                            let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
                            dispatch_async(dispatch_get_global_queue(priority, 0)) {
                                dispatch_async(dispatch_get_main_queue()) {
                                    //Passing back city info
                                    completion(city)
                                }
                            }
                    }
                } catch {
                    print("Error")
                }
                
            }
            
        }
        
        task.resume()
    }
}
