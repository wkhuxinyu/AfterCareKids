//
//  File.swift
//  AfterCareKids
//
//  Created by elz on 26/09/23.
//

import Foundation

struct QueryResult {
    var resultText: [String]
}

protocol QueryModel {
    func performQuery(text: String) -> QueryResult
}

   
class QueryService: QueryModel {
    
var dataArray:[String]=[]
    


    func performQuery(text: String) -> QueryResult {
        //generate a simulate data set
        for index in 0...3 {
             dataArray.append("sitter name:\(index)")
         }
        
        let filteredNames = dataArray.filter { name in
            return name.contains(text)
        }
        
        // remove simulate data
        dataArray.removeAll()
        
        return QueryResult(resultText:filteredNames)

    }
    
 
    }


