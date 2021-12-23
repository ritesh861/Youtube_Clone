//
//  Model.swift
//  youtube_clone
//
//  Created by Ritesh Singh on 23/12/21.
//

import Foundation

class Model {
    
    func getVideos() {
        
        //create a url obj
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else{
          return
        }
        
        //get a url session obj
        
        let session = URLSession.shared
        
        //get a datatask from url session obj
        
        let dataTask = session.dataTask(with: url!) { data , responsse, error in
            
            //checking for errors
            if error != nil || data == nil {
                return
            }
            
            do{
            //parsing the data into video objects
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            let response = try decoder.decode(Response.self, from: data!)
            dump(response)
            }catch{
                
            }
        }
        
        dataTask.resume()
        
        
        
        
        
    }
    
    
}
